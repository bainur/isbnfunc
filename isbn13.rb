class ISBN13
  MULTIPLIERS = [1, 3].freeze

  def initialize(isbn12)
    @digits = parse_input(isbn12)
  end

  def full_isbn
    (@digits + [check_digit]).join
  end

  private

  def parse_input(isbn12)
    raise ArgumentError, 'ISBN must be exactly 12 digits' unless isbn12.match?(/^\d{12}$/)
    isbn12.chars.map(&:to_i)
  end

  def check_digit
    sum = @digits.each_with_index.sum { |digit, index| digit * MULTIPLIERS[index % 2] }
    (10 - sum % 10) % 10
  end
end

# Example Usage
#isbn = ISBN13.new("978014300723")
#puts isbn.full_isbn # Output: 9780143007234

