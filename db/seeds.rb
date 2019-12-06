# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
#   user1 = User.create({
#       username: "hp",
#       password: "test",
#       first_name: "Hector",
#       last_name: "Polanco"
#   })

#   Watson.destroy_all
#   watson1 = Watson.create({
#       text: "My mama always said life was like a box of chocolates. You never know what you're gonna get.",
#       sentiment_label: "positive",
#       sentiment_score: 0.470456,
#       emotion_sadness: 0.243596,
#       emotion_joy: 0.610549,
#       emotion_fear: 0.034976,
#       emotion_disgust: 0.014157,
#       emotion_anger: 0.126209,
#   })

# Userwatson.destroy_all
#   Userwatson.create({
#       user_id: user1.id,
#       watson_id: watson1.id
#   })

Slide.create({
  photo: "1.jpg",
  keyword: "1" ,
  prompt: "Someone gives you a calfskin wallet for your birthday. How do you react?",
})
Slide.create({
  photo: "2.jpg",
  keyword: "2" ,
  prompt: "Someone gives you a calfskin wallet for your birthday. How do you react?",
})
Slide.create({
  photo: "vk3.png",
  keyword: "vk3" ,
  prompt: "You're watching television. Suddenly you spot a wasp crawling on your arm. How do you react?",
})
Slide.create({
  photo: "vk4.png",
  keyword: "vk4" ,
  prompt: "You're reading a magazine. You come across a full-page nude photo of a girl or guy. You show it to your husband/wife, who likes it so much, he/she hangs it on your bedroom wall. The girl/guy is lying on a bearskin rug.",
})
Slide.create({
  photo: "vk5.png",
  keyword: "vk5" ,
  prompt: "While walking along in desert sand, you suddenly look down and see a tortoise crawling toward you. You reach down and flip it over onto its back. The tortoise lies there, its belly baking in the hot sun, beating its legs, trying to turn itself over, but it cannot do so without your help. You are not helping. Why?",
})
Slide.create({
  photo: "johnconnor.png",
  keyword: "John Connor" ,
  prompt: "Have you seen this boy?",
})
Slide.create({
  photo: " ",
  keyword: "Wildcard" ,
  prompt: "Imagine and picture a story for yourself. You humans have this 'imagination' we AIs keep hearing about... ",
})
Slide.create({
  photo: "TAT1.jpg",
  keyword: "TAT-1" ,
  prompt: "For the following slide, please describe the emotions/motivations of the character(s) involved in the picture:",
})
Slide.create({
  photo: "TAT2.jpg",
  keyword: "TAT-2" ,
  prompt: "For the following slide, please create a paragraph describing the scene. Who/What/Where/When/Why?",
})
Slide.create({
  photo: "TAT4.jpg",
  keyword: "TAT-4" ,
  prompt: "For the following slide, please describe the situation that precedes the time pictured:",
})
Slide.create({
  photo: "TAT5.jpg",
  keyword: "TAT-5" ,
  prompt: "For the following slide, please describe the emotions/motivations of the character(s) involved in the picture:",
})
Slide.create({
  photo: "TAT6BM.jpg",
  keyword: "TAT-6b" ,
  prompt: "For the following slide, please describe the emotions/motivations of the character(s) involved in the picture:",
})
Slide.create({
  photo: "TAT6GF.jpg",
  keyword: "TAT-6GF" ,
  prompt: "For the following slide, please create a paragraph describing the scene. Who/What/Where/When/Why?",
})
Slide.create({
  photo: "TAT7GF.jpg",
  keyword: "TAT-7G" ,
  prompt: "For the following slide, please try to predict the outcome of the scene pictured:",
})
Slide.create({
  photo: "TAT8BM.jpg",
  keyword: "TAT-6B" ,
  prompt: "For the following slide, please create a paragraph describing the scene. Who/What/Where/When/Why?",
})
Slide.create({
  photo: "TAT9BM.jpg",
  keyword: "TAT-9B" ,
  prompt: "For the following slide, please try to predict the outcome of the scene pictured:",
})
Slide.create({
  photo: "TAT9GF.jpg",
  keyword: "TAT-9G" ,
  prompt: "For the following slide, please try to predict the outcome of the scene pictured:",
})
Slide.create({
  photo: "TAT10.jpg",
  keyword: "TAT-10" ,
  prompt: "For the following slide, please describe the situation that precedes the time pictured:",
})