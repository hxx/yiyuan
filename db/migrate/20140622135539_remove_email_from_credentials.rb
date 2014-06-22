class RemoveEmailFromCredentials < ActiveRecord::Migration
  def change
    remove_column :credentials, :email, :string
  end
end
