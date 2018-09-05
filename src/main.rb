puts "Main Menu \n------ Biological Age Calculator ------"
puts "1. Start \n0.Exit"
print "What would you like to do?: "
enter_menu = gets.strip.to_i

while enter_menu == 1

    puts "1. User Profile"
    puts "2. Answer Survey Questions"
    puts "3. Calculcate Biological Age"
    puts "0. Exit"
    puts "\nPick an option: "

    get_index = gets.strip.to_i

    case get_index
    when 1
        #SetUserProfile()
    when 2
        #Set questions
    when 3
        #CalculateBiologicalAge
    when 0
        enter_menu = 0

    else
        puts "Try again!"
    end

end

puts "Have a nice day!"