class AddUploadDateToFileStore < ActiveRecord::Migration
  def change
    add_column :file_stores, :upload_date, :date
  end
end
