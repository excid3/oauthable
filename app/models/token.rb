class Token < ActiveRecord::Base
  belongs_to :service
  serialize :auth, Hash

  def credentials
    auth["credentials"]
  end
end
