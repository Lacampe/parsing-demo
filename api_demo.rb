require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/Lacampe'

serialized_user =  open(url).read

user = JSON.parse(serialized_user)

puts "#{user["name"]} is a developer from #{user["location"]}"
