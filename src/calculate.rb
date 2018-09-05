#constant, variables
#i want to represrnt the values

module Calculate
     
    point_score = 0

    if user_profile.gender == 1
        point_score += 5
    end

    if user_profile.body_type == 1
        point_score += 5

    elsif user_profile.body_type == 2
        point_score -= 5

    elsif user_profile.body_type == 3
        point_score += 15

    elsif user_profile.body_type == 4
        point_score += 30
    end

    if user_profile.sleeping == 1
        point_score += 20

    elsif user_profile.sleeping == 2
        point_score += 5

    elsif user_profile.sleeping == 3
        point_score -= 10

    elsif user_profile.sleeping == 4
        point_score += 5
    end

    if user_profile.alcohol == 1
        point_score -= 5

    elsif user_profile.alcohol == 2
        point_score += 2

    elsif user_profile.alcohol == 3
        point_score += 15
    end

    if user_profile.smoke == 1
    point_score -= 10

    elsif user_profile.smoke == 2
        point_score += 5

    elsif user_profile == 3
        point_score += 10
    end

    if user_profile.veggies == 1
        point_score -= 20

    elsif user_profile.veggies == 2
        point_score += 15
    end 

    if user_profile.fruit == 1
        point_score -= 15
    
    elsif user_profile.fruit == 2
        point_score += 10
    end 

    if user_profile.happiness == 1
        point_score += 15

    elsif user_profile.happiness == 2
        point_score -= 5

    elsif user_profile.happiness == 3
        point_score -= 15
    end 

return point_score 

end 

