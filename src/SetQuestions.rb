module SetQuestions

    def self.start_questions

        answers = []

        puts Rainbow("How old are you?").aquamarine.bright
        age = gets.strip.to_i
        answers.push(age)

        puts Rainbow("Are you male or female?(1 = M, 2 = F)").orchid.bright
        gender = gets.strip.to_i
        answers.push(gender)

        puts Rainbow("How would you describe your body? (1 = Very skinny, 2 = Skinny, 3 = Average, 4 = Overweight, 5 = Obese)").aquamarine.bright
        body_type = gets.strip.to_i
        answers.push(body_type)

        puts Rainbow("How many hours of sleep on average do you get? (1 = <4, 2 = 4-6, 3 = 7-9, 4 = 9+)").orchid.bright
        sleeping = gets.strip.to_i
        answers.push(sleeping)

        puts Rainbow("How often do you drink alcohol? (1 = Answer Never, 2 = Occasionally, 3 = Sometimes, 4= Frequently)").aquamarine.bright
        alcohol = gets.strip.to_i 
        answers.push(alcohol)

        puts Rainbow("Do you smoke ciggies? (1 = Yes, 2 = No)").orchid.bright
        smoke = gets.strip.to_i
        answers.push(smoke)

        puts Rainbow("Do you have at least 2 veggies per day? (1 = Yes, 2 = No)").aquamarine.bright
        veggies = gets.strip.to_i
        answers.push(veggies)

        puts Rainbow("Do you have at least 5 fruit per day? (1 = Yes, 2 = No)").orchid.bright
        fruit = gets.strip.to_i
        answers.push(fruit)

        puts Rainbow("How happy are you?(1 = Not happy, 2 = Meh, 3 = Happy)").aquamarine.bright
        happiness = gets.strip.to_i
        answers.push(happiness)

        return answers
    end

end

