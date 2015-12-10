class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  has_many :services

  validates :name, presence: true
  after_initialize :set_default_environment

  private

  def set_default_environment
    self.environment ||= "development"
  end
end
