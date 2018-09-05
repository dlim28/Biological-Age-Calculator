require_relative 'Person.rb'

module SetUserProfile
    

    def self.initial_questions
        print "\nWhat is your name?: "
        user_name = gets.strip

        print "\nHow old are you?: "
        user_age = gets.strip.to_i

        print "\nWhat is your date of birth? (dd/mm/yyyy): "
        user_dob = gets.strip

        user_profile = Person.new(user_name,user_age,user_dob)

        return user_profile

    end

end