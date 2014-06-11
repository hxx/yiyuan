class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.integer :city_id
      t.string  :name
      t.string  :level
      t.integer :beds_count
      t.integer :carers_count

      t.timestamps
    end
  end
end
