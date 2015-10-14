Rails.application.config.middleware.use OmniAuth::Builder do
  Provider.find_each do |p|
    provider p.omniauth_name, setup: true
  end
end
