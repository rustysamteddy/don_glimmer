# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: glimmer-dsl-libui 0.5.17 ruby lib .

Gem::Specification.new do |s|
  s.name = "glimmer-dsl-libui".freeze
  s.version = "0.5.17"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, ".".freeze]
  s.authors = ["Andy Maleh".freeze]
  s.date = "2022-08-04"
  s.description = "Glimmer DSL for LibUI (Prerequisite-Free Ruby Desktop Development GUI Library) - Winner of Fukuoka Ruby Award Competition 2022 Special Award - No need to pre-install any prerequisites. Just install the gem and have platform-independent native GUI that just works! Glimmer DSL for LibUI aims to provide declarative DSL syntax that visually maps to GUI control hierarchy, convention over configuration via smart defaults, automation of low-level details, requiring the least amount of syntax possible to build GUI, bidirectional data-binding, and custom keyword support.".freeze
  s.email = "andy.am@gmail.com".freeze
  s.executables = ["girb".freeze]
  s.extra_rdoc_files = [
    "CHANGELOG.md",
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "CHANGELOG.md",
    "LICENSE.txt",
    "README.md",
    "VERSION",
    "bin/girb",
    "bin/girb_runner.rb",
    "examples/area_based_custom_controls.rb",
    "examples/area_gallery.rb",
    "examples/area_gallery2.rb",
    "examples/area_gallery3.rb",
    "examples/area_gallery4.rb",
    "examples/basic_area.rb",
    "examples/basic_area2.rb",
    "examples/basic_area3.rb",
    "examples/basic_area4.rb",
    "examples/basic_button.rb",
    "examples/basic_child_window.rb",
    "examples/basic_code_area.rb",
    "examples/basic_draw_text.rb",
    "examples/basic_draw_text2.rb",
    "examples/basic_entry.rb",
    "examples/basic_entry2.rb",
    "examples/basic_image.rb",
    "examples/basic_image2.rb",
    "examples/basic_image3.rb",
    "examples/basic_image4.rb",
    "examples/basic_image5.rb",
    "examples/basic_scrolling_area.rb",
    "examples/basic_table.rb",
    "examples/basic_table_button.rb",
    "examples/basic_table_button2.rb",
    "examples/basic_table_checkbox.rb",
    "examples/basic_table_checkbox_text.rb",
    "examples/basic_table_color.rb",
    "examples/basic_table_color2.rb",
    "examples/basic_table_color3.rb",
    "examples/basic_table_image.rb",
    "examples/basic_table_image2.rb",
    "examples/basic_table_image3.rb",
    "examples/basic_table_image_text.rb",
    "examples/basic_table_image_text2.rb",
    "examples/basic_table_image_text3.rb",
    "examples/basic_table_progress_bar.rb",
    "examples/basic_transform.rb",
    "examples/basic_transform2.rb",
    "examples/basic_window.rb",
    "examples/basic_window2.rb",
    "examples/button_counter.rb",
    "examples/class_based_custom_controls.rb",
    "examples/color_button.rb",
    "examples/color_button2.rb",
    "examples/color_the_circles.rb",
    "examples/control_gallery.rb",
    "examples/cpu_percentage.rb",
    "examples/custom_draw_text.rb",
    "examples/custom_draw_text2.rb",
    "examples/date_time_picker.rb",
    "examples/date_time_picker2.rb",
    "examples/dynamic_area.rb",
    "examples/dynamic_area2.rb",
    "examples/dynamic_area3.rb",
    "examples/dynamic_area4.rb",
    "examples/editable_column_table.rb",
    "examples/editable_table.rb",
    "examples/font_button.rb",
    "examples/font_button2.rb",
    "examples/form.rb",
    "examples/form2.rb",
    "examples/form_table.rb",
    "examples/form_table2.rb",
    "examples/form_table3.rb",
    "examples/form_table4.rb",
    "examples/form_table5.rb",
    "examples/grid.rb",
    "examples/histogram.rb",
    "examples/histogram2.rb",
    "examples/login.rb",
    "examples/login2.rb",
    "examples/login3.rb",
    "examples/login4.rb",
    "examples/login5.rb",
    "examples/meta_example.rb",
    "examples/method_based_custom_controls.rb",
    "examples/method_based_custom_controls2.rb",
    "examples/midi_player.rb",
    "examples/midi_player2.rb",
    "examples/midi_player3.rb",
    "examples/paginated_refined_table.rb",
    "examples/shape_coloring.rb",
    "examples/simple_notepad.rb",
    "examples/snake.rb",
    "examples/snake/model/apple.rb",
    "examples/snake/model/game.rb",
    "examples/snake/model/snake.rb",
    "examples/snake/model/vertebra.rb",
    "examples/snake/presenter/cell.rb",
    "examples/snake/presenter/grid.rb",
    "examples/snake2.rb",
    "examples/tetris.rb",
    "examples/tetris/model/block.rb",
    "examples/tetris/model/game.rb",
    "examples/tetris/model/past_game.rb",
    "examples/tetris/model/tetromino.rb",
    "examples/tic_tac_toe.rb",
    "examples/tic_tac_toe/board.rb",
    "examples/tic_tac_toe/cell.rb",
    "examples/tic_tac_toe2.rb",
    "examples/timer.rb",
    "examples/timer2.rb",
    "glimmer-dsl-libui.gemspec",
    "icons/blank.png",
    "icons/glimmer.png",
    "lib/glimmer-dsl-libui.rb",
    "lib/glimmer-dsl-libui/ext/glimmer.rb",
    "lib/glimmer-dsl-libui/ext/rouge/theme/glimmer.rb",
    "lib/glimmer/dsl/libui/bind_expression.rb",
    "lib/glimmer/dsl/libui/control_expression.rb",
    "lib/glimmer/dsl/libui/custom_control_expression.rb",
    "lib/glimmer/dsl/libui/data_binding_expression.rb",
    "lib/glimmer/dsl/libui/dsl.rb",
    "lib/glimmer/dsl/libui/file_expression.rb",
    "lib/glimmer/dsl/libui/listener_expression.rb",
    "lib/glimmer/dsl/libui/observe_expression.rb",
    "lib/glimmer/dsl/libui/open_file_expression.rb",
    "lib/glimmer/dsl/libui/operation_expression.rb",
    "lib/glimmer/dsl/libui/property_expression.rb",
    "lib/glimmer/dsl/libui/save_file_expression.rb",
    "lib/glimmer/dsl/libui/shape_expression.rb",
    "lib/glimmer/dsl/libui/shine_data_binding_expression.rb",
    "lib/glimmer/dsl/libui/string_expression.rb",
    "lib/glimmer/dsl/libui/tab_item_expression.rb",
    "lib/glimmer/fiddle_consumer.rb",
    "lib/glimmer/libui.rb",
    "lib/glimmer/libui/attributed_string.rb",
    "lib/glimmer/libui/control_proxy.rb",
    "lib/glimmer/libui/control_proxy/area_proxy.rb",
    "lib/glimmer/libui/control_proxy/area_proxy/scrolling_area_proxy.rb",
    "lib/glimmer/libui/control_proxy/box.rb",
    "lib/glimmer/libui/control_proxy/box/horizontal_box_proxy.rb",
    "lib/glimmer/libui/control_proxy/box/vertical_box_proxy.rb",
    "lib/glimmer/libui/control_proxy/button_proxy.rb",
    "lib/glimmer/libui/control_proxy/checkbox_proxy.rb",
    "lib/glimmer/libui/control_proxy/color_button_proxy.rb",
    "lib/glimmer/libui/control_proxy/column.rb",
    "lib/glimmer/libui/control_proxy/column/background_color_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/button_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/checkbox_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/checkbox_text_color_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/checkbox_text_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/image_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/image_text_color_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/image_text_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/progress_bar_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/text_color_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/column/text_column_proxy.rb",
    "lib/glimmer/libui/control_proxy/combobox_proxy.rb",
    "lib/glimmer/libui/control_proxy/date_time_picker_proxy.rb",
    "lib/glimmer/libui/control_proxy/date_time_picker_proxy/date_picker_proxy.rb",
    "lib/glimmer/libui/control_proxy/date_time_picker_proxy/time_picker_proxy.rb",
    "lib/glimmer/libui/control_proxy/dual_column.rb",
    "lib/glimmer/libui/control_proxy/editable_column.rb",
    "lib/glimmer/libui/control_proxy/editable_combobox_proxy.rb",
    "lib/glimmer/libui/control_proxy/enableable_column.rb",
    "lib/glimmer/libui/control_proxy/entry_proxy.rb",
    "lib/glimmer/libui/control_proxy/entry_proxy/password_entry_proxy.rb",
    "lib/glimmer/libui/control_proxy/entry_proxy/search_entry_proxy.rb",
    "lib/glimmer/libui/control_proxy/font_button_proxy.rb",
    "lib/glimmer/libui/control_proxy/form_proxy.rb",
    "lib/glimmer/libui/control_proxy/grid_proxy.rb",
    "lib/glimmer/libui/control_proxy/group_proxy.rb",
    "lib/glimmer/libui/control_proxy/image_part_proxy.rb",
    "lib/glimmer/libui/control_proxy/image_proxy.rb",
    "lib/glimmer/libui/control_proxy/label_proxy.rb",
    "lib/glimmer/libui/control_proxy/matrix_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/about_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/check_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/preferences_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/quit_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/radio_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_item_proxy/separator_menu_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/menu_proxy.rb",
    "lib/glimmer/libui/control_proxy/message_box.rb",
    "lib/glimmer/libui/control_proxy/message_box/msg_box_error_proxy.rb",
    "lib/glimmer/libui/control_proxy/message_box/msg_box_proxy.rb",
    "lib/glimmer/libui/control_proxy/multiline_entry_proxy.rb",
    "lib/glimmer/libui/control_proxy/multiline_entry_proxy/non_wrapping_multiline_entry_proxy.rb",
    "lib/glimmer/libui/control_proxy/open_type_features_proxy.rb",
    "lib/glimmer/libui/control_proxy/open_type_tag_proxy.rb",
    "lib/glimmer/libui/control_proxy/path_proxy.rb",
    "lib/glimmer/libui/control_proxy/radio_buttons_proxy.rb",
    "lib/glimmer/libui/control_proxy/slider_proxy.rb",
    "lib/glimmer/libui/control_proxy/spinbox_proxy.rb",
    "lib/glimmer/libui/control_proxy/tab_item_proxy.rb",
    "lib/glimmer/libui/control_proxy/table_proxy.rb",
    "lib/glimmer/libui/control_proxy/text_proxy.rb",
    "lib/glimmer/libui/control_proxy/transformable.rb",
    "lib/glimmer/libui/control_proxy/triple_column.rb",
    "lib/glimmer/libui/control_proxy/window_proxy.rb",
    "lib/glimmer/libui/custom_control.rb",
    "lib/glimmer/libui/custom_control/code_area.rb",
    "lib/glimmer/libui/custom_control/refined_table.rb",
    "lib/glimmer/libui/custom_window.rb",
    "lib/glimmer/libui/data_bindable.rb",
    "lib/glimmer/libui/image_path_renderer.rb",
    "lib/glimmer/libui/parent.rb",
    "lib/glimmer/libui/perfect_shaped.rb",
    "lib/glimmer/libui/shape.rb",
    "lib/glimmer/libui/shape/arc.rb",
    "lib/glimmer/libui/shape/bezier.rb",
    "lib/glimmer/libui/shape/circle.rb",
    "lib/glimmer/libui/shape/figure.rb",
    "lib/glimmer/libui/shape/line.rb",
    "lib/glimmer/libui/shape/polybezier.rb",
    "lib/glimmer/libui/shape/polygon.rb",
    "lib/glimmer/libui/shape/polyline.rb",
    "lib/glimmer/libui/shape/rectangle.rb",
    "lib/glimmer/libui/shape/square.rb",
    "lib/glimmer/proc_tracker.rb",
    "sounds/AlanWalker-Faded.mid",
    "sounds/AlanWalker-SingMeToSleep.mid",
    "sounds/CalvinHarris-Blame.mid",
    "sounds/CalvinHarris-MyWay.mid",
    "sounds/deadmau5-2448.mid",
    "sounds/deadmau5-SoThereIWas.mid"
  ]
  s.homepage = "http://github.com/AndyObtiva/glimmer-dsl-libui".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.16".freeze
  s.summary = "Glimmer DSL for LibUI".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<glimmer>.freeze, ["~> 2.7.3"])
    s.add_runtime_dependency(%q<perfect-shape>.freeze, ["~> 1.0.5"])
    s.add_runtime_dependency(%q<super_module>.freeze, ["~> 1.4.1"])
    s.add_runtime_dependency(%q<os>.freeze, [">= 1.0.0", "< 2.0.0"])
    s.add_runtime_dependency(%q<color>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<libui>.freeze, ["~> 0.0.15"])
    s.add_runtime_dependency(%q<chunky_png>.freeze, ["~> 1.4.0"])
    s.add_runtime_dependency(%q<equalizer>.freeze, ["= 0.0.11"])
    s.add_runtime_dependency(%q<rouge>.freeze, [">= 3.26.0", "< 4.0.0"])
    s.add_development_dependency(%q<juwelier>.freeze, [">= 2.4.9", "< 3.0.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rake-tui>.freeze, [">= 0.2.1"])
    s.add_development_dependency(%q<puts_debuggerer>.freeze, ["~> 0.13.1"])
    s.add_development_dependency(%q<coveralls>.freeze, ["= 0.8.23"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_development_dependency(%q<simplecov-lcov>.freeze, ["~> 0.7.0"])
  else
    s.add_dependency(%q<glimmer>.freeze, ["~> 2.7.3"])
    s.add_dependency(%q<perfect-shape>.freeze, ["~> 1.0.5"])
    s.add_dependency(%q<super_module>.freeze, ["~> 1.4.1"])
    s.add_dependency(%q<os>.freeze, [">= 1.0.0", "< 2.0.0"])
    s.add_dependency(%q<color>.freeze, ["~> 1.8"])
    s.add_dependency(%q<libui>.freeze, ["~> 0.0.15"])
    s.add_dependency(%q<chunky_png>.freeze, ["~> 1.4.0"])
    s.add_dependency(%q<equalizer>.freeze, ["= 0.0.11"])
    s.add_dependency(%q<rouge>.freeze, [">= 3.26.0", "< 4.0.0"])
    s.add_dependency(%q<juwelier>.freeze, [">= 2.4.9", "< 3.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rake-tui>.freeze, [">= 0.2.1"])
    s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.13.1"])
    s.add_dependency(%q<coveralls>.freeze, ["= 0.8.23"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_dependency(%q<simplecov-lcov>.freeze, ["~> 0.7.0"])
  end
end

