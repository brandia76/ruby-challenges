# method on a number that will always return 3
def always_three(number)
  # print out the number after the math, add 5, multiply that by 2, then subtract four, and divide all of it by 2, finall subtract 4
  number = ((((number + 5) *2) -4 ) /2) - number
end

# ask the user for a number
puts "Give Me a number:"
# get the number from user, turn it into an integer and set it to a variable
userNum = gets.to_i

# run method and print the results
puts "Always " + always_three(userNum).to_s