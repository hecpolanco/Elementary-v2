class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def self.authenticate
        key = ENV["NATURAL_LANGUAGE_UNDERSTANDING_APIKEY"]

        authenticator = Authenticators::IamAuthenticator.new(apikey: key)
        @@nlu = NaturalLanguageUnderstandingV1.new(version: "2019-12-04", authenticator: authenticator)
        @@nlu.service_url = ENV["NATURAL_LANGUAGE_UNDERSTANDING_URL"]
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
