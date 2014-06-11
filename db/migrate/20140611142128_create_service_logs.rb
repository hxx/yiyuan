class CreateServiceLogs < ActiveRecord::Migration
  def change
    create_table :service_logs do |t|
      t.integer :order_id
      t.string  :state

      t.timestamps
    end
  end
end
