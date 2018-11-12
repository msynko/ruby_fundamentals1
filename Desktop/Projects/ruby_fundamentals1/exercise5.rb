distance=0

puts "Would you like to walk or run?"
loop do
answer=gets.chomp
  if answer == "walk"
    distance += 1
    puts "Distance from home is #{distance}km. Enegry Increasing"

  elsif answer =="run"
      distance += 5 # increase the value of answer by 3
    puts "Distance from home is #{distance}km. Energy Decreasing"


  elsif answer=="go home"
    break
  end
end
