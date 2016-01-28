json.array!(@file_stores) do |file_store|
  json.extract! file_store, :id, :file_name, :date_loaded, :date_exercised, :attachment
  json.url file_store_url(file_store, format: :json)
end
