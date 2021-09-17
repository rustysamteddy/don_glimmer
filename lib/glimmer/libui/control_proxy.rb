# Copyright (c) 2021 Andy Maleh
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

module Glimmer
  module LibUI
    # Proxy for LibUI control objects
    #
    # Follows the Proxy Design Pattern
    class ControlProxy
      class << self
        def control_exists?(keyword)
          ::LibUI.respond_to?("new_#{keyword}") ||
            ::LibUI.respond_to?(keyword) ||
            Glimmer::LibUI.constants.include?("#{keyword.camelcase(:upper)}Proxy".to_sym)
        end
        
        def create(keyword, parent, args, &block)
          widget_proxy_class(keyword).new(keyword, parent, args, &block)
        end
        
        def widget_proxy_class(keyword)
          begin
            class_name = "#{keyword.camelcase(:upper)}Proxy".to_sym
            Glimmer::LibUI.const_get(class_name)
          rescue
            Glimmer::LibUI::ControlProxy
          end
        end
        
        def init
          unless defined?(@@initialized) && @@initialized
            ::LibUI.init
            @@initialized = true
          end
        end
      end
      
      # libui returns the contained LibUI object
      attr_reader :parent_proxy, :libui, :args, :keyword
      
      def initialize(keyword, parent, args, &block)
        @keyword = keyword
        @parent_proxy = parent
        @args = args
        @block = block
        build_control
        if @parent_proxy.class.constants.include?(:APPEND_PROPERTIES)
          @parent_proxy.class::APPEND_PROPERTIES
        end
        post_add_content if @block.nil?
      end
      
      # Subclasses may override to perform post add_content work (normally must call super)
      def post_add_content
        @parent_proxy&.post_initialize_child(self)
      end
      
      # Subclasses may override to perform post initialization work on an added child
      def post_initialize_child(child)
        # No Op by default
      end

      def can_handle_listener?(listener_name)
        ::LibUI.respond_to?("control_#{listener_name}") || ::LibUI.respond_to?("#{@keyword}_#{listener_name}")
      end
      
      def handle_listener(listener_name, &listener)
        if ::LibUI.respond_to?("control_#{listener_name}")
          ::LibUI.send("control_#{listener_name}", @libui, &listener)
        elsif ::LibUI.respond_to?("#{@keyword}_#{listener_name}")
          ::LibUI.send("#{@keyword}_#{listener_name}", @libui, &listener)
        end
      end
      
      def respond_to?(method_name, *args, &block)
        respond_to_libui?(method_name, *args, &block) ||
          (append_properties.include?(method_name.to_s) || append_properties.include?(method_name.to_s.sub(/=$/, ''))) ||
          super
      end
      
      def respond_to_libui?(method_name, *args, &block)
        ::LibUI.respond_to?("control_#{method_name}") ||
          ::LibUI.respond_to?("#{@keyword}_#{method_name}") ||
          ::LibUI.respond_to?("#{@keyword}_set_#{method_name}") ||
          ::LibUI.respond_to?("#{@keyword}_set_#{method_name.to_s.sub(/=$/, '')}")
      end
      
      def method_missing(method_name, *args, &block)
        if respond_to_libui?(method_name, *args, &block)
          send_to_libui(method_name, *args, &block)
        elsif (append_properties.include?(method_name.to_s) || append_properties.include?(method_name.to_s.sub(/=$/, '')))
          append_property(method_name, *args)
        else
          super
        end
      end
      
      def send_to_libui(method_name, *args, &block)
        if ::LibUI.respond_to?("control_#{method_name}")
          ::LibUI.send("control_#{method_name}", @libui, *args)
        elsif ::LibUI.respond_to?("#{@keyword}_#{method_name}") && args.empty?
          ::LibUI.send("#{@keyword}_#{method_name}", @libui, *args)
        elsif ::LibUI.respond_to?("#{@keyword}_set_#{method_name}") && !args.empty?
          ::LibUI.send("#{@keyword}_set_#{method_name}", @libui, *args)
        elsif ::LibUI.respond_to?("#{@keyword}_set_#{method_name.to_s.sub(/=$/, '')}") && !args.empty?
          ::LibUI.send("#{@keyword}_set_#{method_name.to_s.sub(/=$/, '')}", @libui, *args)
        elsif ::LibUI.respond_to?("#{@keyword}_#{method_name}") && method_name.start_with?('set_') && !args.empty?
          ::LibUI.send("#{@keyword}_#{method_name}", @libui, *args)
        elsif ::LibUI.respond_to?("#{@keyword}_#{method_name}") && !args.empty?
          ::LibUI.send("#{@keyword}_#{method_name}", @libui, *args)
        end
      end
      
      def append_properties
        @parent_proxy&.class&.constants&.include?(:APPEND_PROPERTIES) ? @parent_proxy.class::APPEND_PROPERTIES : []
      end
      
      def append_property(property, value = nil)
        property = property.to_s.sub(/=$/, '')
        @append_property_hash ||= {}
        if value.nil?
          @append_property_hash[property]
        else
          @append_property_hash[property] = value
        end
      end
      
      private
      
      def build_control
        @libui ||= if ::LibUI.respond_to?("new_#{keyword}")
          ::LibUI.send("new_#{@keyword}", *@args)
        elsif ::LibUI.respond_to?(keyword)
          @args[0] = @args.first.libui if @args.first.is_a?(ControlProxy)
          ::LibUI.send(@keyword, *@args)
        end
      end
    end
  end
end