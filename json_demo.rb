require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'



beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end




serialized_file = File.read(filepath)

beers_hash = JSON.parse(serialized_file)

beers_hash["beers"].each do |beer|
  puts "#{beer["name"]} is a #{beer["appearance"]} beer from #{beer["origin"]}"
end

