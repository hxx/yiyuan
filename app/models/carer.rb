class Carer < ActiveRecord::Base
  belongs_to :hospital

  has_many :orders, as: :creator

  has_and_belongs_to_many :ability_tags, join_table: 'ability_tags_carers'
end
