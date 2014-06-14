class ManagerProfile < ActiveRecord::Base
  include ProfileConcern

  belongs_to :manager
end
