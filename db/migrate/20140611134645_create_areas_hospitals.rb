class CreateAreasHospitals < ActiveRecord::Migration
  def change
    create_table :areas_hospitals do |t|
      t.integer :area_id
      t.integer :hospital_id
    end
  end
end
