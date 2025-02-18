# isbn_input_parser.rb
module ISBNInputParser
  def self.parse(isbn12)
    raise ArgumentError, 'ISBN must be exactly 12 digits' unless isbn12.match?(/^\d{12}$/)

    isbn12.chars.map(&:to_i)
  end
end
