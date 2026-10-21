class CreateSpinHeaders < ActiveRecord::Migration
  def change
    create_table :spin_headers do |t|
      t.string :SpinHeader
      t.integer :file_store_id
      t.string :notes
      t.string :stage
      t.time :time_recorded
      t.decimal :distance_recorded
      t.decimal :avg_speed_recorded
      t.integer :avg_watts_recorded
      t.integer :avg_hr_recorded
      t.integer :avg_rpm_recorded
      t.decimal :max_speed_recorded
      t.integer :max_watts_recorded
      t.integer :max_hr_recorded
      t.integer :max_rpm_recorded
      t.integer :kcal_recorded
      t.integer :kj_recorded
      t.decimal :distance_calc
      t.decimal :avg_speed_calc
      t.integer :avg_watts_calc
      t.integer :avg_hr_calc
      t.integer :avg_rpm_calc
      t.decimal :max_speed_calc
      t.integer :max_watts_calc
      t.integer :max_hr_calc
      t.integer :max_rpm_calc

      t.timestamps null: false
    end
  end
end
