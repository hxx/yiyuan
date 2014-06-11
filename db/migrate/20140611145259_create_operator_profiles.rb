class CreateOperatorProfiles < ActiveRecord::Migration
  def change
    create_table :operator_profiles do |t|
      t.integer :operator_id
      t.string  :staff_code
      t.string  :name
      t.string  :gender
      t.string  :id_card
      t.date    :birthday
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string  :native_place
      t.string  :race
      t.string  :political_status
      t.string  :education
      t.string  :address
      t.string  :phone
      t.string  :photo

      t.timestamps
    end
  end
end
