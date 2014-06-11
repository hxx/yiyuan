class City < ActiveRecord::Base
  has_many :hospitals, dependent: :destroy
end
