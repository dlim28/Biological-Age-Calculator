require_relative 'SetUserProfile.rb'
require_relative 'SetQuestions.rb'

puts "Main Menu \n------ Biological Age Calculator ------"
puts "1. Start \n0.Exit"
print "What would you like to do?: "
enter_menu = gets.strip.to_i

while enter_menu == 1

    puts "1. User Profile"
    puts "2. Answer Survey Questions"
    puts "3. Calculcate Biological Age"
    puts "4. Show User Profile"
    puts "0. Exit"
    print "\nPick an option: "

    get_index = gets.strip.to_i

    case get_index
    when 1
        #SetUserProfile()
        user_profile = SetUserProfile::initial_questions
        puts "Name: #{user_profile.name}, Age: #{user_profile.age}, DOB: #{user_profile.date_of_birth}"
    when 2
        #Set questions
        list_of_answers = SetQuestions::start_questions
    when 3
        #CalculateBiologicalAge
    when 4
        puts "Name: #{user_profile.name}, Age: #{user_profile.age}, DOB: #{user_profile.date_of_birth}"
    when 0
        enter_menu = 0

    else
        puts "Try again!"
    end

end

puts "Have a nice day!"