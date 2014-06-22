class Product < ActiveRecord::Base
  has_many :orders

  belongs_to :hospital

  has_and_belongs_to_many :ability_tags
end
