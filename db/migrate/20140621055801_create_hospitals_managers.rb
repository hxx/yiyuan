class CreateHospitalsManagers < ActiveRecord::Migration
  def change
    create_table :hospitals_managers do |t|
      t.integer :hospital_id
      t.integer :manager_id
    end
  end
end
