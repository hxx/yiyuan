class AddCreatorTypeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :creator_type, :string, after: :creator_id
  end
end
