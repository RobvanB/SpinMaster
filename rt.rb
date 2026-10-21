require 'csv'
f = FileStore.first
csv_text = f.attachment.file.read
csvp = CSV.parse(csv_text, :headers => true)
csvp.each do |row|
  puts row.count
  if row.count == 2
   gets 'ENTER'
  end
end
