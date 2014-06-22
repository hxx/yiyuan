class Credential < ActiveRecord::Base
  belongs_to :credentialable, polymorphic: true

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
