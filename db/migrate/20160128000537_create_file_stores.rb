class CreateFileStores < ActiveRecord::Migration
  def change
    create_table :file_stores do |t|
      t.string :file_name
      t.date :date_loaded
      t.date :date_exercised
      t.string :attachment

      t.timestamps null: false
    end
  end
end
