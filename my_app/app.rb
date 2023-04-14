require_relative '../classes/person'
require_relative '../classes/book'
require_relative '../classes/rental'
require_relative '../classes/student'
require_relative '../classes/teacher'
require_relative './switch'

puts 'Welcome to School Library'

puts 'Please choose an option by entering a number:'

class App
  def initialize(list_options)
    @people = []
    @books = []
    @rentals = []
    @list_options = list_options
  end
  
  def run
    @list_options.each do |option|
      puts option
    end
  
    choice = gets.chomp.to_i
  
    case choice
  
    when 1, 2, 3
  
      switch(choice)
  
    when 4, 5, 6, 7
  
      switch_rental(choice)
  
    end
  end
  
  def list_books(books)
    books.each_with_index do |book, _index|
      puts "Title: '#{book.title.capitalize}', Author: #{book.author.capitalize}"
    end
  
    puts 'No books in the library, create some.'
  end
end
