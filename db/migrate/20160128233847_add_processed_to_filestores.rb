class AddProcessedToFilestores < ActiveRecord::Migration
  def change
    add_column :file_stores, :processed, :boolean
  end
end
