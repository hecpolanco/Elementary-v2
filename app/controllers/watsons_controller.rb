require "ibm_watson/authenticators"
require "ibm_watson/natural_language_understanding_v1"
include IBMWatson

class WatsonsController < ApplicationController 

  def index
    @userwatsons = Userwatson.all
  end
  
  def new
    allslides = Slide.all.to_a
    @slide = allslides.sample
    @watson = Watson.new
  end

  def create
    @watson_text = params["watson"]["text"]    
    if @watson_text.empty? || @watson_text.length < 20
      redirect_to new_watson_path
    else
      ApplicationController.analyze(@watson_text)
      watson = Watson.create(
        text: @watson_text,
        sentiment_label: @@text_analysis["sentiment"]['document']['label'],
        sentiment_score: @@text_analysis["sentiment"]['document']['score'],
        emotion_sadness: @@text_analysis['emotion']['document']['emotion']['sadness'],
        emotion_joy: @@text_analysis['emotion']['document']['emotion']['joy'],
        emotion_fear: @@text_analysis['emotion']['document']['emotion']['fear'],
        emotion_disgust: @@text_analysis['emotion']['document']['emotion']['disgust'],
        emotion_anger: @@text_analysis['emotion']['document']['emotion']['anger']
      )

      keywords = @@text_analysis["keywords"]
      keywords.each do |keyword_hash|
        Keyword.create(
        text: keyword_hash["text"],
        relevance: keyword_hash["relevance"],
        count: keyword_hash["count"],
        watson_id: watson.id
      )
      end

      categories = @@text_analysis["categories"]
      categories.each do |category_hash|
        Category.create(
          score: category_hash["score"],
          label: category_hash["label"],
          watson_id: watson.id
        )
      end

      userwatson = Userwatson.create(
        user_id: current_user.id,
        watson_id: watson.id
      )
      redirect_to watson_path(watson.id)
    end
  end

  def edit
    @watson = Watson.find(params[:id])
  end

  def update
    @watson = Watson.find(params[:id])
    @sun_text = params["watson"]["text"]

    authenticator = Authenticators::IamAuthenticator.new(apikey: ENV["NATURAL_LANGUAGE_UNDERSTANDING_APIKEY"])
    natural_language_understanding = NaturalLanguageUnderstandingV1.new(
    version: "2019-07-12",
    authenticator: authenticator)

    natural_language_understanding.service_url = ENV["NATURAL_LANGUAGE_UNDERSTANDING_URL"]
    
    response = natural_language_understanding.analyze(
      text: @sun_text,
      features: {emotion: {}, categories: {limit:3}, keywords: {limit:3}, relations: {limit:3},  sentiment:{}})
    @result_hash = response.result
    
    @watson.update(
      text: @sun_text,
      sentiment_label: @result_hash["sentiment"]['document']['label'],
      sentiment_score: @result_hash["sentiment"]['document']['score'],
      emotion_sadness: @result_hash['emotion']['document']['emotion']['sadness'],
      emotion_joy: @result_hash['emotion']['document']['emotion']['joy'],
      emotion_fear: @result_hash['emotion']['document']['emotion']['fear'],
      emotion_disgust: @result_hash['emotion']['document']['emotion']['disgust'],
      emotion_anger: @result_hash['emotion']['document']['emotion']['anger'],
      keywords: @result_hash['keywords'],
      categories: @result_hash['categories']
    )
    redirect_to watson_path(@watson)
  end

  def show
    @watson = Watson.find(params[:id])
  end

  def destroy
    watson = Watson.find(params[:id])
    watson.destroy
    redirect_to watsons_path
  end

  private

  def strong_params
    params.require(:watson).permit(:text, :sentiment_label, :sentiment_score, :emotion_sadness, :emotion_joy, :emotion_fear, :emotion_disgust, :emotion_anger, :keywords, :categories)
  end

end