class Calculator

  def add *numbers
    numbers.inject(:+)
  end

  def subtraction *numbers
  	numbers.inject(:-)
  end

  def multiplication *numbers
  	numbers.inject(:*)
  end

  def division *numbers
  	numbers.inject(:/)
  end
  
  
end
