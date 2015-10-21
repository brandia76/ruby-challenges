# set love to 0
love_count = 0
# Get the second right now
current_second = Time.new.sec

# print every nanosecond until the time changes to the next second
while current_second == Time.new.sec 
  puts "Can't stop loving you"
  # keep track of the love
  love_count += 1
end

# let them now how much love there is
print "I love you #{love_count} times!"