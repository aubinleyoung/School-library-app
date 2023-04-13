class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rented_by(person)
    Rental.new(Date.today, self, person)
  end

  def times_rented_out
    rentals.count
  end
end
