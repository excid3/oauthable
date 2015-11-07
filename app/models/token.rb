class Token < ActiveRecord::Base
  belongs_to :service
  serialize :auth, Hash

  def credentials
    auth["credentials"]
  end

  def token_and_secret
    credentials.slice("token", "secret")
  end
end
