require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
puts "What ingredient?"
ingredient = gets.chomp
url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.m_titre_resultat a').each do |element|
  # puts element.text.strip
  # puts element.attribute('href').value
  base_url = "http://www.letscookfrench.com"
  p Nokogiri::HTML(open(base_url + element.attribute('href').value).read)
end
