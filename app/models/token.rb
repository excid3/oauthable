class Token < ActiveRecord::Base
  belongs_to :service
  serialize :auth, Hash

  def credentials; auth["credentials"]; end

  def token_and_secret; credentials.slice("token", "secret"); end

  def uid;      @uid ||= auth["uid"]; end
  def nickname; @nickname ||= auth["info"]["nickname"]; end
  def name;     @name ||= auth["info"]["name"]; end
end
