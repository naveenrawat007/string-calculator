class StringCalculator
  def add(input)
    return 0 if input.empty?
    numbers = input.split(/,|\n/).map(&:to_i) # Split on commas or newlines
    numbers.sum
  end
end
