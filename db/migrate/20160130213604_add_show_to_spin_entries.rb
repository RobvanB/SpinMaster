class AddShowToSpinEntries < ActiveRecord::Migration
  def change
    add_column :spin_entries, :show, :boolean
  end
end
