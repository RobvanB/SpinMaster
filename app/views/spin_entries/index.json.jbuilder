json.array!(@spin_entries) do |spin_entry|
  json.extract! spin_entry, :id, :time, :distance, :speed, :power, :hrate, :rpm, :spin_date, :user_id
  json.url spin_entry_url(spin_entry, format: :json)
end
