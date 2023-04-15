require_relative './nameable'
require_relative './rental'
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :rental, :age, :generated_id, :id

  def initialize(age,name, parent_permission: true)
    super()
    @id = rand(1..1_000)
    @name = name
    @rental = []
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end

  def rent_book(book)
    Rental.new(Date.today, book, self)
  end

  def book_rented_out
    rentals.map(&:book)
  end
end
