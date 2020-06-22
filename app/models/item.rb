class Item < ActiveRecord::Base
  belongs_to :list # adds methods to model
  validates :description, presence: true
end
