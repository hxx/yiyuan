class RemoveCarerIdFromCarers < ActiveRecord::Migration
  def change
    remove_column :carers, :carer_id, :integer, after: :id
  end
end
