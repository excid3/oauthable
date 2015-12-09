#Provider.delete_all

PROVIDERS.each do |omniauth_name, name, github, domain, register_url|
  provider = Provider.where(name: name).first_or_create
  provider.update(
    omniauth_name: omniauth_name,
    gem_name: github.split("/").last,
    github: github,
    domain: domain,
    register_url: register_url,
  )
end
