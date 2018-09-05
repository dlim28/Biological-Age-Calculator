class Person

    attr_accessor :name, :age, :date_of_birth, :gender, 
                    :body_type, :hours_of_sleep, :alcoholic, :is_smoker,
                    :consume_veggies, :consume_fruit, :happiness_index, :biological_age

    def initialize user_name, user_age, user_dob
        @name = user_name
        @age = user_age
        @date_of_birth = user_dob
        @gender = 0
        @body_type = 0 #Very skinny(10), Skinny(3), Average(0), Overweight(10), Obese(20)
        @hours_of_sleep = 0
        @alcoholic = 0 #Never(0), Occasionally(1), Sometimes(5), Frequently(10)
        @is_smoker = 0 #Yes(10), No(0)
        @consume_veggies = 0 #Yes(-10), No(5)
        @consume_fruit = 0 #Yes(-10), No(5)
        @happiness_index = 0 #Not happy(20), Meh(10), Happy(-10)
        @biological_age = 0
    end
end