class CarerProfile < ActiveRecord::Base
  belongs_to :carer

  mount_uploader :photo, ::PhotoUploader
end
