class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :product_id
      t.string :state
      t.datetime :service_start_time
      t.datetime :service_end_time

      t.timestamps
    end
  end
end
