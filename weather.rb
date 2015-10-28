#Script to print weather based on location
require 'yahoo_weatherman'

# use yahoo_weatherman to get the weather based on a location the user inputs
def get_weather
  client = Weatherman::Client.new
  
  # get a location from the user
  puts "Please enter your location"
  location = gets.chomp
  
  return client.lookup_by_location(location)
end

# yahoo_weatherman returns the temp in celsius, convert it to fahrenheit 
def convert_to_f(temp_in_c)
  return ((temp_in_c.to_i * 1.8) + 32).round
end

# print out the weather back to the user
def weather_forecast

  # get the weather array
  weather = get_weather

  # print the users current weather based on their location
  puts message = "\nThe weather in #{weather.location['city']}, #{weather.location['region']} is currently #{convert_to_f(weather.condition['temp'])} degrees and #{weather.condition['text'].downcase}.\n\nThe forecast for the next 4 days is:"

  # print the forecast. Based on yahoo_weatherman code, we know that the forecast array has 5 days worth of data
  5.times do |num|
    # forecast array for a day
    info = weather.forecasts[num]
    
    # Fine out the day of the week. Based on the yahoo_weatherman code, we know that the first day in the array is today and the second is tomorrow
    case num
    when 0
      day = "Today"
    when 1
      day == "Tomorrow"
    else
      # for all other days, use the date to get the full word of the day of the week. Yahoo_weatherman only returns the abbreviated word
      day = info['date'].strftime('%A')
    end

    #print out each line of the forecast
    puts forecast_message = "#{day || info['day']} will be #{info['text'].downcase} with a high of #{convert_to_f(info['high'])} degrees and a low of #{convert_to_f(info['low'])} degrees."
  
  end
  
end

# start the weather app
weather_forecast