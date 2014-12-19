puts "Welcome to the tip calculator - what was the price of the meal?"
meal_price = gets.chomp.to_f
puts "What was the tip % do you want to give (15%, 10%, 20%, etc.)?"
tip_percentage = gets.chomp.to_f

def my_function(meal_price, tip_percentage)
	$tip_amount = meal_price * tip_percentage / 100.0
	puts "On a meal that costs $#{meal_price} and you want to tip #{tip_percentage}%, you should pay $#{$tip_amount}."
end 

my_function(meal_price, tip_percentage)

puts "Would you like to split it? Y or N"
should_i_split = gets.chomp.downcase! 

# Adding costs together 
$total_price = $tip_amount + meal_price

if should_i_split == "y"
	puts "How many ways would you like to split it? (2, 5, 10, etc.)"
	how_many_people = gets.chomp.to_f
	cost_per_person = $total_price / how_many_people
	puts "You each should pay #{cost_per_person}"
else
	puts "Goodbye then!"
end
