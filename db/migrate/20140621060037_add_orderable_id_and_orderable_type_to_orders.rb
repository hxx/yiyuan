class AddOrderableIdAndOrderableTypeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :orderable_id, :integer, after: :product_id
    add_column :orders, :orderable_type, :string, after: :orderable_id
  end
end
