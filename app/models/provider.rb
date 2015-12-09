class Provider < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
end
