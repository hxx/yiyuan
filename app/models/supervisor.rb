class Supervisor < ActiveRecord::Base
  has_one :credential, as: :credentialable
end
