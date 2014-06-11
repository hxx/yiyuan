class Product < ActiveRecord::Base
  has_many :orders

  belongs_to :hospital
end
