json.array!(@spin_headers) do |spin_header|
  json.extract! spin_header, :id, :SpinHeader, :file_store_id, :notes, :stage, :time_recorded, :distance_recorded, :avg_speed_recorded, :avg_watts_recorded, :avg_hr_recorded, :avg_rpm_recorded, :max_speed_recorded, :max_watts_recorded, :max_hr_recorded, :max_rpm_recorded, :kcal_recorded, :kj_recorded, :distance_calc, :avg_speed_calc, :avg_watts_calc, :avg_hr_calc, :avg_rpm_calc, :max_speed_calc, :max_watts_calc, :max_hr_calc, :max_rpm_calc
  json.url spin_header_url(spin_header, format: :json)
end
