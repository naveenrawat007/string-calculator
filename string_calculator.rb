class StringCalculator
  def add(input)
    return 0 if input.empty?
    
    if input.start_with?("//")
      delimiter, numbers = input[2..].split("\n", 2)
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers = input.split(/,|\n/).map(&:to_i)
      numbers.sum
    end

  end
end
