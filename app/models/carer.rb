class Carer < ActiveRecord::Base
  belongs_to :hospital

  has_many :orders, as: :creator
end
