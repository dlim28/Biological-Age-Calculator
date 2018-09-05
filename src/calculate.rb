
module Calculate 
     
    def self.set_score user_profile

        point_score = 0

        # Gender
        if user_profile.gender == 1
            point_score += 5
        end

        # Body Type
        if user_profile.body_type == 1
            point_score += 5

        elsif user_profile.body_type == 2
            point_score -= 5

        elsif user_profile.body_type == 3
            point_score += 15

        elsif user_profile.body_type == 4
            point_score += 30
        end

        #Sleeping
        if user_profile.hours_of_sleep == 1
            point_score += 20

        elsif user_profile.hours_of_sleep == 2
            point_score += 5

        elsif user_profile.hours_of_sleep == 3
            point_score -= 10

        elsif user_profile.hours_of_sleep == 4
            point_score += 5
        end

        # Alcohol
        if user_profile.alcoholic == 1
            point_score -= 5

        elsif user_profile.alcoholic == 2
            point_score += 2

        elsif user_profile.alcoholic == 3
            point_score += 15
        end

        # Smoking
        if user_profile.is_smoker == 1
        point_score -= 10

        elsif user_profile.is_smoker == 2
            point_score += 5

        elsif user_profile.is_smoker == 3
            point_score += 10
        end

        # Veggie servings
        if user_profile.consume_veggies == 1
            point_score -= 20

        elsif user_profile.consume_veggies == 2
            point_score += 15
        end 

        # Fruit serving
        if user_profile.consume_fruit == 1
            point_score -= 15
        
        elsif user_profile.consume_fruit == 2
            point_score += 10
        end 

        # Happiness index
        if user_profile.happiness_index == 1
            point_score += 15

        elsif user_profile.happiness_index == 2
            point_score -= 5

        elsif user_profile.happiness_index == 3
            point_score -= 15
        end 

        return point_score 
    end
    
end 

