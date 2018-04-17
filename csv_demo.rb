require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'
csv_options_read = { col_sep: ',', quote_char: '"', headers: :first_row }
csv_options_write = { col_sep: ',', force_quotes: true, quote_char: '"' }
beers = [
  ['Asahi', 'Pale Lager', 'Japan'],
  ['Guinness', 'Stout', 'Ireland'],
  ["Bud", "Blonde", "USA"]
]

CSV.open(filepath, 'wb', csv_options_write) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << beer
  end
end


CSV.foreach(filepath, csv_options_read) do |row|
  puts "#{row['Name']} is a #{row['Appearance']} beer from #{row['Origin']}"
end

