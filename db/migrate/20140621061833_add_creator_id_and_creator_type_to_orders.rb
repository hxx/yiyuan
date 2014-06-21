class AddCreatorIdAndCreatorTypeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :creator_id, :string, after: :product_id
    add_column :orders, :creator_type, :string, after: :creator_id
  end
end
