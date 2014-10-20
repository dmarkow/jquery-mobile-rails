module JqueryMobileRails
  class Engine < ::Rails::Engine
    initializer "jquery_mobile_rails.assets.precompile" do |app|
      app.config.assets.precompile += %w(jquery-mobile/icons-png/*.png jquery-mobile/*.gif)
    end
  end
end