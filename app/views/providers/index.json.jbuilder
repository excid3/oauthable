json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :omniauth_name, :github, :instructions
  json.url provider_url(provider, format: :json)
end
