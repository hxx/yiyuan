class Hospital < ActiveRecord::Base
  has_and_belongs_to_many :areas
  has_many                :departments
  has_many                :products
  belongs_to              :city
end
