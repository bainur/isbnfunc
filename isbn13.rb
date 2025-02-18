# isbn13.rb
require_relative 'isbn_input_parser'
require_relative 'isbn_check_digit'

class ISBN13
  def initialize(isbn12)
    @digits = ISBNInputParser.parse(isbn12)
  end

  def full_isbn
    (@digits + [ISBNCheckDigit.calculate(@digits)]).join
  end
end
