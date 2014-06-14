module ProfileConcern
  extend ActiveSupport::Concern

  included do
    mount_uploader :photo, PhotoUploader

    acts_as_taggable_on :training_tags
  end
end
