require_relative 'rental'
class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def rented_by(date,person)
    Rental.new(date, self, person)
  end

  def times_rented_out
    rental.count
  end
end
