require './string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("")).to eq(0)
  end

  it "return same number if single number is given " do
    calculator = StringCalculator.new
    expect(calculator.add("5")).to eq(5)
  end

end
