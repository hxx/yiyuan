class OperatorProfile < ActiveRecord::Base
  belongs_to :operator

  mount_uploader :photo, PhotoUploader
end
