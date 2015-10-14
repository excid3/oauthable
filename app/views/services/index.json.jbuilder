json.array!(@services) do |service|
  json.extract! service, :id, :provider, :uid, :token, :secret, :auth
  json.url service_url(service, format: :json)
end
