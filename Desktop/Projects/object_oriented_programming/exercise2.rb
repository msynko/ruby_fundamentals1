class  Cat

  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    msg=""
    if @meal_time <=12
      msg = "#{@meal_time} A.M"
    else
      msg = "#{@meal_time-12} P.M"
    end
    return msg
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end


Cat1 = Cat.new("Betty","potato", 12)
Cat2 = Cat.new("Stan","apple",18)

puts Cat1.eats_at
puts Cat1.meow
puts Cat2.meow
