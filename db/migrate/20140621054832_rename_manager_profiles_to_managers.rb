class RenameManagerProfilesToManagers < ActiveRecord::Migration
  def change
    rename_table :manager_profiles, :managers
  end
end
