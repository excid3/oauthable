class Service < ActiveRecord::Base
  belongs_to :provider
  belongs_to :project
  has_many :tokens

  serialize :options, Hash
end
