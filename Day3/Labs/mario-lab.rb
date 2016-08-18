require 'pry'

puts "How many layers would you like?"
towerLevels = gets.chomp.to_i
hashtags = [] # after iteration 1, "##"
spacing = []
puts "\n\n"

for layers in 1..towerLevels
  binding.pry

  hashtags = hashtags.insert(0, ("-" * (towerLevels - layers)))
 
  binding.pry
  
  hashtags = hashtags.insert(layers, "#")
  hashtags = hashtags.insert(layers, "#")

  if hashtags.class != String
    hashtags = hashtags.join
  end

  

  puts hashtags
  hashtags = hashtags.scan("#").join

  
end

puts "\n\n"
