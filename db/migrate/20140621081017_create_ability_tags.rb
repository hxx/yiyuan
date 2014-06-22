class CreateAbilityTags < ActiveRecord::Migration
  def change
    create_table :ability_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
