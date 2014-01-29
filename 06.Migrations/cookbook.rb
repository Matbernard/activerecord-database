require_relative 'config/application'
require './models/recipe'

# your program here

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice = gets.chomp.to_i

if choice == 1
  puts "Type the name of the recipe you want to add"
  name = gets.chomp
  puts "Enter the description of your recipe"
  description = gets.chomp
  puts "How long does it takes?"
  length = gets.chomp.to_i
  puts "How difficult it is Dude? Please enter an integer between 1 and 10"
  difficulty = gets.chomp.to_i
  puts  "Can you rate this recipe Dude?"
  rating = gets.chomp.to_i

  Recipe.create(name: name, description: description, length: length, difficulty: difficulty, rating: rating)

elsif choice == 2
  puts "Please confirm you want to delete all by typing DELETE "
  answer = gets.chomp
  	if answer == "DELETE"
			Recipe.delete_all()
			puts "ok, you just delete all the recipes"
		else
			puts "ok, your are not going to delete anything"
		end

elsif choice == 3
  puts "What recipe?"
  id = gets.chomp
  puts "new you description"
  description = gets.chomp
else
  puts "i did not understand"
  
end