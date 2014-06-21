class CreateProductsAbilityTags < ActiveRecord::Migration
  def change
    create_table :ability_tags_products do |t|
      t.integer :ability_tag_id
      t.integer :product_id
    end
    add_index :ability_tags_products, :ability_tag_id
  end
end
