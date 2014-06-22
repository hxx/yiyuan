module ProfileConcern
  extend ActiveSupport::Concern

  included do
    mount_uploader :photo, PhotoUploader
  end
end
