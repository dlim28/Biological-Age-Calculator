class Person

    attr_reader :name :age :date_of_birth :biological_age
    attr_writer :is_smoker :alcoholic :body_type :consume_veggies :consume_fruit :happiness_index :biological_age :hours_of_sleep

    def initialize user_name, user_age, user_dob
        @name = user_name
        @age = user_age
        @date_of_birth = user_dob
        @is_smoker = 0 #Yes(10), No(0)
        @alcoholic = 0 #Never(0), Occasionally(1), Sometimes(5), Frequently(10)
        @body_type = 0 #Very skinny(10), Skinny(3), Average(0), Overweight(10), Obese(20)
        @consume_veggies = 0 #Yes(-10), No(5)
        @consume_fruit = 0 #Yes(-10), No(5)
        @happiness_index = 0 #Not happy(20), Meh(10), Happy(-10)
        @hours_of_sleep = 0
        @biological_age = 0
    end
end