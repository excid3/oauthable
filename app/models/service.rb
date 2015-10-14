class Service < ActiveRecord::Base
  belongs_to :provider
  belongs_to :user
  has_many :tokens
end
