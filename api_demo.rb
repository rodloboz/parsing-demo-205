require 'json'
require 'open-uri'
require 'byebug'

# TODO - Let's fetch name and bio from a given GitHub username
BASE_URL = "https://api.github.com/"

puts "What's your GitHub username?"
username = gets.chomp

url = BASE_URL + "users/#{username}"

response = open(url)
user_serialized = response.read
user = JSON.parse(user_serialized)
byebug

puts "#{user['name']} - #{user['bio']}"
