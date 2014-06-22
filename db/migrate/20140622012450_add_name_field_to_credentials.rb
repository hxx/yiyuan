class AddNameFieldToCredentials < ActiveRecord::Migration
  def change
    add_column :credentials, :name, :string, after: :email
  end
end
