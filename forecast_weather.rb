require "yahoo_weatherman"
client = Weatherman::Client.new

puts "Hey, what's your zip code? I'll tell you your 5-day forecast! "
user_location = gets.chomp

response = client.lookup_by_location(user_location)

forecast = response.forecasts

# Must get inside of the array first, then I can access the Hash of forecast information
	forecast.each do |array|
		puts array.fetch('day') + " is going to be " + array.fetch('text').downcase + " with a low of " + array.fetch('low').to_s + " and a high of " + array.fetch('high').to_s + " degress celius."
	end


=begin
	forecast.each do |a|
		a.each do |key, value|
			flat_forecast = "#{key}, #{value}"
			puts flat_forecast
		end
	end
=end





#temperature = response.condition['temp']
#text = client.lookup_by_location(user_location).condition['text']


=begin
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
=end
