require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'


serialized_beers = File.read(filepath)
beers = JSON.parse(serialized_beers)

p beers["beers"]

puts "What's the name of the beer?"
name = gets.chomp
puts "What's the appearance of the beer?"
appearance = gets.chomp
puts "What's the origin of the beer?"
origin = gets.chomp

beer = {
  name: name,
  appearance: appearance,
  origin: origin
}

beers["beers"] << beer

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end













