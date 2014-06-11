class Operator < User
  has_one :operator_profile, dependent: :destroy
end
