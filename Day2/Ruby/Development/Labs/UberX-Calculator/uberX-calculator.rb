#methods
def calculate_x(minutes, miles, cancel)
  if cancel
    final_price = 5
  else
    final_price = 2.55
    final_price = final_price + (minutes * 0.35)
    final_price = final_price + (1.75 * miles)

  end
end

def calculate_suv(minutes, miles, cancel)
 if cancel
    final_price =  10 #cancellation fee
 else
  final_price = 14 #base
  final_price = final_price + (minutes * 0.8) #minutes
  final_price = final_price + (miles * 4.5) #miles
  end
end

def calculate_black(minutes, miles, cancel)
  if cancel
    final_price =  10 #cancellation fee
  else
    final_price = 7 #base
    final_price = final_price + (minutes * 0.65) #minutes
    final_price = final_price + (miles * 3.75) #miles

  end
end

def calculate_xl(minutes, miles, cancel)
  if cancel
    final_price =  5 #cancellation fee
 else
  final_price = 3.85 #base
  final_price = final_price + (minutes * 0.5) #minutes
  final_price = final_price + (miles * 2.85) #miles

  end
end

def calculate_family(minutes, miles, cancel)
  if cancel
    final_price = 5 #cancellation fee
  else
    final_price = 2.55 #base
    final_price = final_price + (minutes * 0.35) #minutes
    final_price = final_price + (miles * 1.75) #miles
  end
end






#main

puts "Welcome to the Uber Calculator:
Input a number corresponding to what you would like to calculate:

Input 1 for Uber SUV
Input 2 for Uber Black
Input 3 for Uber XL
Input 4 for Uber X
Input 5 for Uber Family"
car_choice = gets.chomp

puts "Did you cancel your ride? (Input 0 for yes, input 1 for no)"
cancel = gets.chomp.to_i
if cancel == 0
  cancel = true
elsif cancel == 1
  cancel = false
else
  while cancel =! false || cancel =! true
     puts "Did you cancel your ride? (Input 0 for yes, input 1 for no)"
      cancel = gets.chomp.to_i
      if cancel == 0
        cancel = true
      elsif cancel == 1
        cancel = false
      end
  end
end

if cancel == false
  puts "How many minutes is the ride?"
  minutes = gets.chomp.to_f

  puts "How many miles is the ride?"
  miles = gets.chomp.to_f
end

if car_choice == 1
  puts "Final Price is: #{calculate_suv(minutes, miles, cancel)}"
elsif car_choice == 2
  puts "Final Price is: #{calculate_black(minutes, miles, cancel)}"
elsif car_choice == 3
  puts "Final Price is: #{calculate_xl(minutes, miles, cancel)}"
elsif car_choice == 4
  puts "Final Price is: #{calculate_x(minutes, miles, cancel)}"
else car_choice == 5
  puts "Final Price is: #{calculate_family(minutes, miles, cancel)}"
end
