Rails.application.config.middleware.use OmniAuth::Builder do
  if ActiveRecord::Base.connection.table_exists? 'providers'
    Provider.find_each do |p|
      provider p.omniauth_name, setup: true
    end
  end
end

OmniAuth.config.on_failure = SessionsController.action(:failure)
