class ApplicationController < ActionController::Base

    def self.authenticate
        # key = ENV["NATURAL_LANGUAGE_UNDERSTANDING_APIKEY"]

        authenticator = Authenticators::IamAuthenticator.new(apikey: "gb0WN0tov2tn7z5pn_ixsZUSeeDBZnOIUgTJxkfrKPt5")
        @@nlu = NaturalLanguageUnderstandingV1.new(version: "2019-12-04", authenticator: authenticator)
        @@nlu.service_url = "https://gateway-wdc.watsonplatform.net/natural-language-understanding/api"
    end

    def self.analyze(object)
        authenticate

        response = @@nlu.analyze(
            text: "#{object}",
            features: {
                emotion: {}, 
                categories: {limit:3}, 
                entities: {limit:3}, 
                keywords: {limit:3}, 
                relations: {limit:3},  
                sentiment:{}
            })
          @@text_analysis = response.result
    end



end
