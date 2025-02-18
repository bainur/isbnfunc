# isbn_check_digit.rb
class ISBNCheckDigit
  MULTIPLIERS = [1, 3].freeze

  def self.calculate(digits)
    sum = digits.each_with_index.sum { |digit, index| digit * MULTIPLIERS[index % 2] }
    (10 - sum % 10) % 10
  end
end

