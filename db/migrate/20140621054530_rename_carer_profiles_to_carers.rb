class RenameCarerProfilesToCarers < ActiveRecord::Migration
  def change
    rename_table :carer_profiles, :carers
  end
end
