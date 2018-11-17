class Player

  def initialize (gold_coins, health_points, lives)
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    @gold_coins
  end

  def level_up
    @lives+=1
  end

  def collected_treasure
    @gold_coins+=1
    if @gold_coins % 10 == 0
      return @lives+=1
    end
  end

  def go_battle(damage)
    @health_points-=damage
    if @health_points<1
       @lives-=1 && @health_points=10
     end
     if @lives<=0
       restart
     end
  end


   def restart
     @gold_coins=0
     @health_points=10
     @lives=5
   end

  def show_status
    puts "Gold coins: #{@gold_coins}"
    puts "Lives: #{@lives}"
    puts "Health Points: #{@health_points}"
  end
end

player1 = Player.new(50,30,6)
player1.collected_treasure
player1.show_status
player1.collected_treasure
player1.collected_treasure
player1.collected_treasure
player1.go_battle(10)
player1.show_status
