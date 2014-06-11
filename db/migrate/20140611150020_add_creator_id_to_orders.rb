class AddCreatorIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :creator_id, :integer, after: :product_id
  end
end
