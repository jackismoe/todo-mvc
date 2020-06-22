class Item < ActiveRecord::Base
  belongs_to :list # adds methods to model
end
