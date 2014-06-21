class CreateCarersAbilityTags < ActiveRecord::Migration
  def change
    create_table :ability_tags_carers do |t|
      t.integer :ability_tag_id
      t.integer :carer_id
    end
    add_index :ability_tags_carers, :ability_tag_id
  end
end
