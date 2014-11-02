require 'rack/ssl-enforcer'

module HerokuRackSslEnforcerRails
  class Railtie < Rails::Railtie
    initializer "heroku_rack_ssl_enforcer_rails.insert_middleware" do |app|
      app.config.middleware.use Rack::SslEnforcer, :only_hosts => /.+\.herokuapp\.com/
    end
  end
end
