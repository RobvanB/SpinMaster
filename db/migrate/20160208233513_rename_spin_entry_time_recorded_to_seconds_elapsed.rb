class RenameSpinEntryTimeRecordedToSecondsElapsed < ActiveRecord::Migration
  def change
    remove_column :spin_entries, :time
    add_column :spin_entries, :time_recorded, :string
    add_column :spin_entries, :seconds_elapsed, :integer
  end
end
