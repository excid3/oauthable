Rails.application.config.middleware.use OmniAuth::Builder do
  PROVIDERS.each do |omniauth_name, _, _, _, _|
    provider omniauth_name, setup: true
  end
end

OmniAuth.config.on_failure = SessionsController.action(:failure)
