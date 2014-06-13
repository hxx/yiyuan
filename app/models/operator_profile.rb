class OperatorProfile < ActiveRecord::Base
  belongs_to :operator

  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :training_tags
end
