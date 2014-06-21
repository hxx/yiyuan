class Operator < ActiveRecord::Base
  has_one :credential, as: :credentialable
  belongs_to :hospital

  has_many :orders, as: :creator
end
