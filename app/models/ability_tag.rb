class AbilityTag < ActiveRecord::Base
  has_and_belongs_to_many :products

  has_and_belongs_to_many :carers, join_table: 'ability_tags_carers'

  validates :name, presence: true, uniqueness: true
end
