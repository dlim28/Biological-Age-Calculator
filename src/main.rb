require_relative 'SetUserProfile.rb'
require_relative 'SetQuestions.rb'

puts "Main Menu \n------ Biological Age Calculator ------"
puts "1. Start \n0.Exit"
print "What would you like to do?: "
enter_menu = gets.strip.to_i

user_profile = nil

def set_user_questions profile, answers
        @name = user_name
        profile.age = answers[0]
        @date_of_birth = user_dob
        profile.gender = answers[1]
        profile.body_type = answers[2]
        @hours_of_sleep = answers[3]
        @alcoholic = answers[4]
        @is_smoker = 0 #Yes(10), No(0)
        @consume_veggies = 0 #Yes(-10), No(5)
        @consume_fruit = 0 #Yes(-10), No(5)
        @happiness_index = 0 #Not happy(20), Meh(10), Happy(-10)
        @biological_age = 0
end

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
        puts "Name: #{user_profile.name}, Age: #{user_profile.age}, DOB: #{user_profile.date_of_birth}\n"
    when 2
        #Set questions
        if user_profile == nil
            puts "You do not have a profile. Make a profile first!"
        else
            list_of_answers = SetQuestions::start_questions
            set_user_questions(user_profile, list_of_answers)
        end
    when 3
        #CalculateBiologicalAge
    when 4
        if user_profile == nil
            puts "You do not have a profile. Make a profile first!"
        else
            puts "Name: #{user_profile.name}, Age: #{user_profile.age}, DOB: #{user_profile.date_of_birth}"
        end
    when 0
        enter_menu = 0

    else
        puts "Try again!"
    end

end

puts "Have a nice day!"