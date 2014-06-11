class AddDescriptionAndPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text, after: :name
    add_column :products, :price, :float, after: :description
  end
end
