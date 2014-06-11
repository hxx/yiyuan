class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :hospital_id
      t.string  :name

      t.timestamps
    end
  end
end
