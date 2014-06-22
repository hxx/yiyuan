class AddNameToAdministrators < ActiveRecord::Migration
  def change
    add_column :administrators, :name, :string, after: :id
  end
end
