class RemoveManagerIdFromManagers < ActiveRecord::Migration
  def change
    remove_column :managers, :manager_id, :integer, after: :id
  end
end
