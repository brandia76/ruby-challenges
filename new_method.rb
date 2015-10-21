# get the local hour, via the computers time
def determine_current_hour
  current_time = Time.new
  current_hour = current_time.hour
end

# ask the user for their name
def get_name
  puts "Hello. What is your name?"
  gets.capitalize
end

# greet the user
def greeting

  # get hour from determine_current_hour method 
  current_hour = determine_current_hour
  
  # get time of day based on hour
  if current_hour > 3 && current_hour < 12 
    time = "morning"
  elsif current_hour >= 12 && current_hour < 18 
    time = "afternoon"
  elsif current_hour >= 18 || current_hour <= 3
    time = "evening"
  end
  
  # get the user name and greet the user
  puts "Good #{time}, " + get_name
end

#run program
greeting