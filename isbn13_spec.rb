require_relative 'isbn13'
require 'rspec'

RSpec.describe ISBN13 do
  describe '#full_isbn' do
    it 'generates correct ISBN-13 from 12-digit input' do
      isbn = ISBN13.new('978014300723')
      expect(isbn.full_isbn).to eq('9780143007234')
    end

    it 'raises an error for invalid input' do
      expect { ISBN13.new('9780143') }.to raise_error(ArgumentError, 'ISBN must be exactly 12 digits')
    end

    it 'raises an error for non-numeric input' do
      expect { ISBN13.new('abcdefghijkl') }.to raise_error(ArgumentError, 'ISBN must be exactly 12 digits')
    end
  end
end

