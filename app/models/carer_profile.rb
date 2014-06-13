class CarerProfile < ActiveRecord::Base
  belongs_to :carer

  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :training_tags
end
