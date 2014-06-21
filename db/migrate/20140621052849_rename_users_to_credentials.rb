class RenameUsersToCredentials < ActiveRecord::Migration
  def change
    rename_table :users, :credentials
  end
end
