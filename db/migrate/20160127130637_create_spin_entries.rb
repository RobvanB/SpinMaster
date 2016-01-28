class CreateSpinEntries < ActiveRecord::Migration
  def change
    create_table :spin_entries do |t|
      t.time :time
      t.decimal :distance
      t.decimal :speed
      t.decimal :power
      t.integer :hrate
      t.integer :rpm
      t.date :spin_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
