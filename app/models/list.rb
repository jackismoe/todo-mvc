class List < ActiveRecord::Base
  has_many :items # adds methods to model
  validates :name, presence: true
end
