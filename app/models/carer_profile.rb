class CarerProfile < ActiveRecord::Base
  include ProfileConcern

  belongs_to :carer
end
