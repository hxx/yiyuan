class Operator < ActiveRecord::Base
  has_one :credential, as: :credentialable
  accepts_nested_attributes_for :credential
  belongs_to :hospital

  has_many :orders, as: :creator
end
