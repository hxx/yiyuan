class Manager < ActiveRecord::Base
  has_one :credential, as: :credentialable

  has_and_belongs_to_many :hospitals
end
