class RenameColumnFileStoreFileNameFileDesc < ActiveRecord::Migration
  def change
    rename_column :file_stores, :file_name, :description
  end
end
