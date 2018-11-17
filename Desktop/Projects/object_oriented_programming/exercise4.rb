class Paperboy

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0.00
    @quota = 50
  end

  def quota
    @quota+=(@experience/2)
  end

  def experience
    @experience
  end

  def deliveries (start_address, end_address)
    @experience = end_address - start_address
    if @experience > @quota
      @earnings +=0.25 * @quota
      @earnings +=(@experience - @quota) * 0.5
    else
      @earnings +=papers * 0.5
      @earnings -= 2.00
    end
end

  def number_of_papers (start_address, end_address)
    papers = end_address - start_address
  end

  def report
   "I'm #{@name}, I've delivered #{@experience} papers and I've earned $ #{@earnings} so far!"
    end

end


jim= Paperboy.new("Jim")
puts jim.deliveries(10,200)
puts jim.number_of_papers(10,200)
puts jim.report
