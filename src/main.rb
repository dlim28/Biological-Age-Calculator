require_relative 'SetUserProfile.rb'
require_relative 'SetQuestions.rb'
require_relative 'Calculate.rb'

puts "Main Menu \n------ Biological Age Calculator ------"
puts "1. Start \n0.Exit"
print "What would you like to do?: "
enter_menu = gets.strip.to_i

user_profile = nil

def set_user_questions profile, answers
        profile.age = answers[0]
        profile.gender = answers[1]
        profile.body_type = answers[2]
        profile.hours_of_sleep = answers[3]
        profile.alcoholic = answers[4]
        profile.is_smoker = answers[5]
        profile.consume_veggies = answers[6]
        profile.consume_fruit = answers[7]
        profile.happiness_index = answers[8]
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
        #Calculate the biological age
        biological_age = Calculate::set_score(user_profile)
        if biological_age <= 0
            puts "Subtract #{biological_age} from your current age.
            \nYour biological age is #{age + biological_age}!"
        else
            puts "Add #{biological_age} to your current age.
            \nYour biological age is #{age + biological_age}"
        end
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