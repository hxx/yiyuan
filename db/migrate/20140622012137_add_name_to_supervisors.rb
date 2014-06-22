class AddNameToSupervisors < ActiveRecord::Migration
  def change
    add_column :supervisors, :name, :string, after: :id
  end
end
