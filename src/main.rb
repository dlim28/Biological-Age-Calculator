require_relative 'SetUserProfile.rb'
require_relative 'SetQuestions.rb'
require_relative 'Calculate.rb'
require_relative 'GetStatistics.rb'
require 'terminal-table'
require 'rainbow'

def display_start_menu
    start_menu_rows = []
    start_menu_rows << [Rainbow("1.").hotpink.bright, Rainbow("Start").lightskyblue.bright]
    start_menu_rows << [Rainbow("0.").hotpink.bright, Rainbow("Exit").lightskyblue.bright]

    start_menu_table = Terminal::Table.new :title => Rainbow("Start Menu").hotpink.bright, :rows => start_menu_rows
    start_menu_table.style = {:width => 40, :padding_left => 3, :border_x => "=", :border_i => "x"}

    return start_menu_table
end

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

    # if profile.body_type != 0 && (profile.body_type == 4 || profile.body_type == 5)
    #     user_profile_row << ["Fun Fact", GetStatistics::get_excercise_statistics()]

    # elsif profile.hours_of_sleep != 0 && (profile.hours_of_sleep != 3 || profile.hours_of_sleep != 4)
    #     user_profile_row << ["Fun Fact", GetStatistics::get_sleep_statistic()]

    # elseif profile.alcoholic != 0 && (profile.alcoholic != 1 || profile.alcoholic != 2)
    # user_profile_row << ["Fun Fact", GetStatistics::get_alcohol_statistics()]

    # elsif profile.is_smoker != 0 && profile.is_smoker == 1
    #     user_profile_row << ["Fun Fact", GetStatistics::get_smoker_statistics()]

    # elsif profile.consume_veggies != 0 && profile.consume_veggies == 2
        
    # elsif profile.consume_fruit != 0 && profile.consume_fruit == 2
        
    # elsif profile.happiness_index != 0 && (profile.happiness_index != 1 || profile.happiness_index != 2)

    # end

    display_profile = Terminal::Table.new :title => "Your Profile", :rows => user_profile_row

    return display_profile
end

def display_main_menu
    main_menu_rows = []
    main_menu_rows << [Rainbow("1.").hotpink.bright, Rainbow("Create user profile").lightskyblue.bright]
    main_menu_rows << :separator
    main_menu_rows << [Rainbow("2.").hotpink.bright, Rainbow("Answer survey questions").lightskyblue.bright]
    main_menu_rows << :separator
    main_menu_rows << [Rainbow("3.").hotpink.bright, Rainbow("Calculate biological age").lightskyblue.bright]
    main_menu_rows << :separator
    main_menu_rows << [Rainbow("4.").hotpink.bright, Rainbow("Show Profile").lightskyblue.bright]
    main_menu_rows << :separator
    main_menu_rows << [Rainbow("0.").hotpink.bright, Rainbow("Exit").lightskyblue.bright]
    main_menu_table = Terminal::Table.new :title => Rainbow("Main Menu").hotpink.bright, :rows => main_menu_rows

    return main_menu_table
end

user_profile = nil
list_of_answers = nil

puts display_start_menu

print Rainbow("What would you like to do?\n").blueviolet.bright
enter_menu = gets.strip.to_i

while enter_menu == 1
    
    puts "\n"
    puts display_main_menu
    print Rainbow("\nPick an option: ").blueviolet.bright

    get_index = gets.strip.to_i

    case get_index
    when 1
        #SetUserProfile()
        if user_profile == nil
            user_profile = SetUserProfile::initial_questions
            puts Rainbow("Your user profile has been created. Thanks #{user_profile.name}\n").bright
        else
            puts Rainbow("You already have a profile #{user_profile.name}\n").red.bright
        end
        
    when 2
        #Set questions
        if user_profile == nil 
            puts Rainbow("You do not have a profile. Make a profile first!\n").red.bright
        else
            if list_of_answers != nil
                puts Rainbow("You already answered the questions!\nGo and calculate your biological age!\n").blueviolet.bright
            else
                list_of_answers = SetQuestions::start_questions
                set_user_questions(user_profile, list_of_answers)
                puts Rainbow("Thank you for answering the questions!\nYou should calculate your biological age now!\n").blueviolet.bright            end
        end
    when 3
        #Calculate the biological age

        if user_profile == nil
            puts Rainbow("You do not have a profile. Make a profile first!\n").blueviolet.bright
        elsif list_of_answers == nil
            puts Rainbow("You haven't answered the questions yet!").red.bright

        else
            biological_age = Calculate::set_score(user_profile)
            user_profile.biological_age = user_profile.age + biological_age
            if biological_age <= 0
                puts "Subtract #{biological_age} from your current age.
                \nYour biological age is #{user_profile.biological_age}!\n"
            else
                puts "Add #{biological_age} to your current age.
                \nYour biological age is #{user_profile.biological_age}\n"
            end
        end
        
    when 4
        if user_profile == nil
            puts Rainbow("You do not have a profile. Make a profile first!\n").red.bright
        else

            puts display_user_profile(user_profile)

        end
    when 0
        enter_menu = 0
    else
        puts "Try again!"
    end

end

puts Rainbow("Have a nice day!").lemonchiffon.bright
