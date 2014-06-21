class RenameOperatorProfilesToOperators < ActiveRecord::Migration
  def change
    rename_table :operator_profiles, :operators
  end
end
