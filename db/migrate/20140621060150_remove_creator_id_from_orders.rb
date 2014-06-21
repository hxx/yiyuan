class RemoveCreatorIdFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :creator_id
  end

  def down
    add_column :orders, :creator_id, :integer, after: :orderable_type
  end
end
