# This module will use the API to return specific results regarding health from the 
# Australian Buerau of Statistics

# require 'net/http'
# require 'json'

# url = 'http://stat.data.abs.gov.au/sdmx-json/data/ALC/1+2.1+2.1+2+3+4+5.1+2+3+4+5+6+7+8+9+10+11+12+13+15+14.A/all?detail=Full&dimensionAtObservation=AllDimensions&startPeriod=2016&endPeriod=2016'
# uri = URI(url)
# response = Net::HTTP.get(uri)
# parsed = JSON.parse(response)

# puts parsed ['header'] ['sender'] ['name']

module GetStatistics

    smoker_statistics = ''
    alcohol_statistics = ''
    excercise_statistics = ''
    obesity_statistics = ''
    health_suggestion = ''
    statistic = ''

    def self.set_smoke_statistic
        # Set URL, URI and response
        smoker_statistics = 'Smoker statistic: 1000 people dead a second'
    end

    def self.set_alcohol_statistic
        # Set URL, URI and response
        alcohol_statistics = 'A Goon bag can be used as a pillow'
    end

    def self.set_excercise_statistic
        # Set URL, URI and response
        excercise_statistics = 'I like cheeseburgers and HSP'
    end

    def self.set_obesity_statistic
        # Set URL, URI and response
        obesity_statistics = 'Im not fat, im conserving my energy'
    end

    def self.set_health_suggestion
        # Set URL, URI and response
        health_suggestion = 'You should jump off the west gate bridge'
    end

    def self.get_statistic 
        # Need to determine which one to set and then set it to the statistic variable
        # Need to get the paramaters from the questionaire to determine which statistic to set
        # to the statistic variable
        statistic = smoker_statistics
    end

    # def self.output #gets output
    #     #puts "#{smoker_statistics}"
    #     return "#{smoker_statistics} \nHealth Suggestion: #{health_suggestion}"
    # end

end