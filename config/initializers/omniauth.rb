Rails.application.config.middleware.use OmniAuth::Builder do
  Provider.find_each do |p|
    Rails.logger.debug "Adding provider #{p.omniauth_name}"
    provider p.omniauth_name.gsub("omniauth-", ""), setup: true
  end
end
