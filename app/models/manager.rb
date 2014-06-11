class Manager < User
  has_one :manager_profile, dependent: :destroy
end
