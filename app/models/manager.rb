class Manager < ActiveRecord::Base
  has_one :credential, as: :credentialable

  has_and_belongs_to_many :hospitals

  has_many :orders, as: :creator
end
