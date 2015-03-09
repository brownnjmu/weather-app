require "yahoo_weatherman"
client = Weatherman::Client.new

def fahrenheit_conversion(response) 
	fahrenheit = response.to_i * (9/5) + 32
	return fahrenheit
end

puts "Hey, what's your zip code? I'll tell you how CRAZY it is out there! "
user_location = gets.chomp

temperature = client.lookup_by_location(user_location).condition['temp']
text = client.lookup_by_location(user_location).condition['text']

puts text 

case (text)
when "Sunny"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Light Snow"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."	
when "Heavy Snow"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."	
when "Snow"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."	
when "Rain"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Heavy Rain"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Showers"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Thunderstorms"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Light Rain"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Cloudy"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Partly Cloudy"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Mostly Cloudy"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Fog"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
when "Fair"
	puts "#{fahrenheit_conversion(temperature)} AND CRAZY #{text.upcase}."
else
	puts "It must be nice! Without any CRAZY weather near you, you must be at the Day Spa or Paradise!"
end





=begin
client = Weatherman::Client.new
response = client.lookup_by_woeid 455821

response.location['city']
response.location['country']
response.condition['date']


puts response.location




ptbr_client = Weatherman:Client.new
response = ptbr_client.lookup_by_woeid 455821

response.condition['text']
response.condition['country']

puts response.condition
=end