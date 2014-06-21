class RemoveTypeFromCredentials < ActiveRecord::Migration
  def up
    remove_column :credentials, :type
  end

  def down
    add_column :credentials, :type, :string, after: :credentialable_type
  end
end
