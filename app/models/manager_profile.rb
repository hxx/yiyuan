class ManagerProfile < ActiveRecord::Base
  belongs_to :manager

  mount_uploader :photo, PhotoUploader
end
