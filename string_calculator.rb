class StringCalculator
  def add(input)
    return 0 if input.empty?

    numbers = if input.start_with?("//")
      delimiter, numbers = input[2..].split("\n", 2)
      numbers.split(delimiter).map(&:to_i)
    else
      input.split(/,|\n/).map(&:to_i)
    end

    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(", ")}" unless negatives.empty?

    numbers.sum
  end
end
