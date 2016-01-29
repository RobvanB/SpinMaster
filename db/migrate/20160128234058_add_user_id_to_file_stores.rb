class AddUserIdToFileStores < ActiveRecord::Migration
  def change
    add_column :file_stores, :user_id, :integer
  end
end
