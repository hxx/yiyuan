class RemoveUnnecessaryFieldsFromManagers < ActiveRecord::Migration
  def change
    remove_column :managers, :staff_code, :string
    remove_column :managers, :gender, :string
    remove_column :managers, :id_card, :string
    remove_column :managers, :birthday, :date
    remove_column :managers, :age, :integer
    remove_column :managers, :weight, :integer
    remove_column :managers, :height, :integer
    remove_column :managers, :native_place, :string
    remove_column :managers, :race, :string
    remove_column :managers, :political_status, :string
    remove_column :managers, :education, :string
    remove_column :managers, :address, :string
    remove_column :managers, :phone, :string
    remove_column :managers, :photo, :string
  end
end
