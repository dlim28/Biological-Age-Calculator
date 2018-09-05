module SetQuestions

    def self.start_questions

        answers = []

        puts "How old are you?"
        age = gets.strip.to_i
        answers.push(age)

        puts "Are you male or female?(1 = M, 2 = F)"
        gender = gets.strip
        answers.push(gender)

        puts "How would you describe your body? (1 = Very skinny, 2 = Skinny, 3 = Average, 4 = Overweight, 5 = Obese)"
        body_type = gets.strip.to_i
        answers.push(body_type)

        puts "How many hours of sleep on average do you get? (1 = <4, 2 = 4-6, 3 = 7-9, 4 = 9+)"
        sleeping = gets.strip.to_i
        answers.push(sleeping)

        puts "How often do you drink alcohol? (1 = Answer Never, 2 = Occasionally, 3 = Sometimes, 4= Frequently)"
        alcohol = gets.strip.to_i 
        answers.push(alcohol)

        puts "Do you smoke ciggies? (1 = Yes, 2 = No)"
        smoke = gets.strip
        answers.push(smoke)

        puts "Do you have at least 2 veggies per day? (1 = Yes, 2 = No)"
        veggies = gets.strip
        answers.push(veggies)

        puts "Do you have at least 5 fruit per day? (1 = Yes, 2 = No)"
        fruit = gets.strip
        answers.push(fruit)

        puts "How happy are you?(1 = Not happy, 2 = Meh, 3 = Happy)"
        happiness = gets.strip.to_i
        answers.push(happiness)

        return answers
    end

end