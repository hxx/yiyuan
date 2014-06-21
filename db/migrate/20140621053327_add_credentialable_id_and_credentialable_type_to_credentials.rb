class AddCredentialableIdAndCredentialableTypeToCredentials < ActiveRecord::Migration
  def change
    add_column :credentials, :credentialable_id, :integer, after: :email
    add_column :credentials, :credentialable_type, :string, after: :credentialable_id
  end
end
