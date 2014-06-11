class Carer < User
  has_one :carer_profile, dependent: :destroy
end
