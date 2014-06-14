class AddProductNameAndProductDescriptionAndProductPriceToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :product_name, :string, after: :creator_id
    add_column :orders, :product_description, :text, after: :product_name
    add_column :orders, :product_price, :float, after: :product_description
  end
end
