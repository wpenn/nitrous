

def catch_num(input)
  num = input.scan(/\d/)
  while num.empty?
    puts "Not a valid answer. Please input a number:"
    input = gets.chomp
    num = input.scan(/\d/)
  end
  num.join.to_f
end


def calc_addition(first_number, second_number)
  return first_number + second_number
end
def calc_subtraction(first_number, second_number)
  return first_number - second_number
end
def calc_multiplication(first_number, second_number)
  return first_number * second_number
end
def calc_division(first_number, second_number)
  return first_number / second_number
end

#calculation_completed = false
calculating = true

puts "What is the first number you would like to manipulate?"
first_input_num = gets.chomp
first_input_num = catch_num(first_input_num)

while calculating
calculation_completed = false

puts "What is the second number you would like to manipulate?"
second_input_num = gets.chomp
second_input_num = catch_num(second_input_num)

puts "What is the operator you would like to use? (+, -, ÷, x)"
operator_input = gets.chomp.downcase

while calculation_completed == false
  if(operator_input == "+")
      final_num = calc_addition(first_input_num, second_input_num)
      calculation_completed = true
  elsif(operator_input == "-")
      final_num = calc_subtraction(first_input_num, second_input_num)
      calculation_completed = true
  elsif(operator_input == "x" || operator_input == "*")
      final_num = calc_multiplication(first_input_num, second_input_num)
      calculation_completed = true
  elsif(operator_input == "/" || operator_input == "÷")
      final_num = calc_division(first_input_num, second_input_num)
      calculation_completed = true
  else
      puts "Not a valid operator. Please input a valid operation (+, -, x, /)"
      operator_input = gets.chomp
      calculation_completed = false
  end
end


answer_question = false

while answer_question == false
  puts "Your number is: #{final_num}"

  puts "Would you like to continue calculating that number?"
  continue_input = gets.chomp.downcase

  if continue_input == "yes"
    calculating = true
    answer_question = true
  elsif continue_input == "no"
    calculating = false
    answer_question = true
  else
    answer_question = false
  end
end
  first_input_num = final_num
end
puts "Your final number is: #{final_num}"