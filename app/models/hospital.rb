class Hospital < ActiveRecord::Base
  has_and_belongs_to_many :areas
  has_many                :departments, dependent: :destroy
  has_many                :products, dependent: :destroy
  belongs_to              :city
end