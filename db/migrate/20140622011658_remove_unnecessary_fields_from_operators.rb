class RemoveUnnecessaryFieldsFromOperators < ActiveRecord::Migration
  def change
    remove_column :operators, :staff_code, :string
    remove_column :operators, :gender, :string
    remove_column :operators, :id_card, :string
    remove_column :operators, :birthday, :date
    remove_column :operators, :age, :integer
    remove_column :operators, :weight, :integer
    remove_column :operators, :height, :integer
    remove_column :operators, :native_place, :string
    remove_column :operators, :race, :string
    remove_column :operators, :political_status, :string
    remove_column :operators, :education, :string
    remove_column :operators, :address, :string
    remove_column :operators, :phone, :string
    remove_column :operators, :photo, :string
  end
end
