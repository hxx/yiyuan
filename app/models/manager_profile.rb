class ManagerProfile < ActiveRecord::Base
  belongs_to :manager

  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :training_tags
end
