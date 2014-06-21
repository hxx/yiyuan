class RemoveOperatorIdFromOperators < ActiveRecord::Migration
  def change
    remove_column :operators, :operator_id, :integer, after: :id
  end
end
