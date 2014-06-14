class AddCurrentServiceLogIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :current_service_log_id, :integer, after: :creator_id
  end
end
