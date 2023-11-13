# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Destroying quizzes, questions, users, books, and authors..."
Question.destroy_all
Quiz.destroy_all
User.destroy_all
Book.destroy_all
Author.destroy_all

puts "Creating authors"
virginie = Author.create!(first_name: "Virginie", last_name: "Grimaldi")
flavie = Author.create!(first_name: "Flavie", last_name: "Pichot")

puts "Creating books"
book = Book.create!(title: "Le Lac d'Annecy", synopsis: "Coucou les amis ! On est en vacances à Annecy,en Haute-Savoie.
C'est parti pour une balade autour du lac. Lily a repéré un arc-en-ciel. Et s'il avait un trésor à découvrir ?
On va tout vous raconter ! Gros bisous", isbn: "978-2-38051-078-2", genre: "jeunesse",
language: "français", published_at: Time.zone.parse("2023-10-18"), author: virginie)
book.cover.attach(io: URI.open("https://res.cloudinary.com/booksy/image/upload/v1699180525/development/tp9mgpqd316am3tffw4e73selxou.jpg"),
  filename: "#{book.title.strip}_cover.jpg", content_type: "image/jpg")
book.save

puts "Creating users"
user = User.create!(email: "darigoldman@gmail.com", username: "dariberrie", nickname: "dari", password: "12345678")

puts "Creating quizzes and questions"
quiz = Quiz.create!(user: user)

first = Question
  .create!(question_text: "Quel est le nom de la mère de Dari ?",
    option_a: "Marie",
    option_b: "Jennifer",
    option_c: "Jodie",
    option_d: "Carole",
    correct_response: "Jodie",
    point_value: 5,
    book: book,
    quiz: quiz)

second = Question
  .create!(question_text: "Quel est le nom de le père de Dari ?",
    option_a: "Jean",
    option_b: "Gary",
    option_c: "Pierre",
    option_d: "Paul",
    correct_response: "Gary",
    point_value: 5,
    book: book,
    quiz: quiz)

third = Question
    .create!(question_text: "Quel est le nom du chien de Dari ?",
      option_a: "Appa",
      option_b: "Tiger",
      option_c: "Scrooge",
      option_d: "Spot",
      correct_response: "Appa",
      point_value: 5,
      book: book,
      quiz: quiz)

puts "Seeds created."