# method to ask for birthdate
def get_birthdate
  puts "Please enter your birthday MMDDYYYY"
  birthdate = gets
end

def birth_path_number(date) 
  #declare variable for numerology number
  number = 0
    
  # add all the numbers from the birthdate together
  for i in 0..7 do
    number += date[i].to_i
  end
  
  # if the number is larger than 9, run method to make it smaller
  #if number > 9 then number = make_smaller(number) end
  number = make_smaller(number) if number > 9
 end
# method to get the birth number down to one digit
def make_smaller(num)
  #declare variable for adding number
  small_num = 0
  
  # convert the number to a string so it can be used like an array
  num = num.to_s
  # find out how many digits on in the number so the for loop knows how many time to go though
  digits = num.length - 1

  # add each number to each other
  #for i in 0..digits do
   # small_num += num[i].to_i

  #end
  num.each do |digit|
    small_num += digit.to_i
  end

  #make sure number is only one digits
  if small_num.to_s.length > 1 then small_num = make_smaller small_num end
  
  small_num
end

# ask the player if they want to play again
def play_again
  # find out if the user wants to put in another birthdate
  puts "\nWould you like to enter another birthdate date? Yes or No"
  answer = gets.chomp.downcase
   
  #run again if the user wants to
  if answer == "yes" 
    puts "\n"
    find_numberology 
  end
end

# figure out the correct message based on birth number
def numerology_message(numerology_number)
  # print out numerology meaning for birthday
  case numerology_number
  when 1
    message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
  when 2
    message =  "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3
    message =  "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4
    message =  "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    message =  "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6
    message =  "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7
    message =  "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8
    message =  "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9
    message =  "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    message =  "I'm sorry, you did not enter a valid birthday. Goodbye."
  end
end

# main function 
def find_numberology
  # ask for birthdate
  birthdate = get_birthdate

  # is the birthdate valid
  unless birthdate.chomp.length == 8 then get_birthdate end

  number = birth_path_number(birthdate) 
  
  #print users number
  puts "Your numerology number is #{number}."
  puts numerology_message(number)

  # ask the user to play again
  play_again
end

# run main script
find_numberology