require 'ukraine_header_banner/view_helpers'

module UkraineHeaderBanner
  class Railtie < Rails::Railtie

    initializer "ukraine_header_banner.view_helpers" do
      ActiveSupport.on_load(:action_view) { include UkraineHeaderBanner::ViewHelpers }
    end

    initializer 'ukraine_header_banner.add_autoload_paths', :before => :set_autoload_paths do |app|
      app.config.autoload_paths << app.root.join("app/views/ukraine_header_banner").to_s
    end

    initializer 'ukraine_header_banner.add_view_paths', :after => :add_view_paths do |app|
      ActiveSupport.on_load(:action_controller) do
        append_view_path "#{Gem.loaded_specs['ukraine_header_banner'].full_gem_path}/app/views"
      end
    end

  end
end