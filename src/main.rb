require_relative 'SetUserProfile.rb'
require_relative 'SetQuestions.rb'
require_relative 'Calculate.rb'
require 'terminal-table'

start_menu_rows = []
start_menu_rows << ["1.", "Start"]
start_menu_rows << ["0.", "Exit"]

start_menu_table = Terminal::Table.new :title => "Start Menu", :rows => start_menu_rows
start_menu_table.style = {:width => 40, :padding_left => 3, :border_x => "=", :border_i => "x"}


puts start_menu_table

print "What would you like to do?: \n"
enter_menu = gets.strip.to_i

user_profile = nil
list_of_answers = nil

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

def display_user_profile profile

    user_profile_row = []
    user_profile_row << ["Name.", profile.name]
    user_profile_row << :separator
    user_profile_row << ["Age.", profile.age]
    user_profile_row << :separator
    user_profile_row << ["Date of Birth", profile.date_of_birth]

    display_profile = Terminal::Table.new :title => "Your Profile", :rows => user_profile_row

    return display_profile
end

def display_main_menu
    main_menu_rows = []
    main_menu_rows << ["1.", "Create user profile"]
    main_menu_rows << :separator
    main_menu_rows << ["2.", "Answer survey questions"]
    main_menu_rows << :separator
    main_menu_rows << ["3.", "Calculate biological age"]
    main_menu_rows << :separator
    main_menu_rows << ["4.", "Show Profile"]
    main_menu_rows << :separator
    main_menu_rows << ["0.", "Exit"]
    main_menu_table = Terminal::Table.new :title => "Main Menu", :rows => main_menu_rows

    return main_menu_table
end

while enter_menu == 1
    
    puts "\n"
    puts display_main_menu
    print "\nPick an option: "

    get_index = gets.strip.to_i

    case get_index
    when 1
        #SetUserProfile()
        if user_profile == nil
            user_profile = SetUserProfile::initial_questions
            puts "Your user profile has been created. Thanks #{user_profile.name}\n"
        else
            puts "You already have a profile #{user_profile.name}\n"
        end
        
    when 2
        #Set questions
        if user_profile == nil 
            puts "You do not have a profile. Make a profile first!\n"
        else
            if list_of_answers != nil
                puts "You already answered the questions!\nGo and calculate your biological age!\n"
            else
                list_of_answers = SetQuestions::start_questions
                set_user_questions(user_profile, list_of_answers)
                puts "Thank you for answering the questions!\nYou should calculate your biological age now!\n"
            end
        end
    when 3
        #Calculate the biological age

        if user_profile == nil
            puts "You do not have a profile. Make a profile first!\n"
        elsif list_of_answers == nil
            puts "You haven't answered the questions yet!"

        else
            biological_age = Calculate::set_score(user_profile)
            if biological_age <= 0
                puts "Subtract #{biological_age} from your current age.
                \nYour biological age is #{user_profile.age + biological_age}!\n"
            else
                puts "Add #{biological_age} to your current age.
                \nYour biological age is #{user_profile.age + biological_age}\n"
            end
        end
        
    when 4
        if user_profile == nil
            puts "You do not have a profile. Make a profile first!\n"
        else
            puts display_user_profile(user_profile)

        end
    when 0
        enter_menu = 0
    else
        puts "Try again!"
    end

end

puts "Have a nice day!"