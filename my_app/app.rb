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
  
def list_people(people)
  puts 'All people:'

  if people.length.positive?

    people.each do |person|
      if person.respond_to?('specialization')
        puts "[TEACHER] Name: #{person.name.capitalize}, ID: #{person.id}, Age: #{person.age} }"
      else
        puts "[STUDENT] Name: #{person.name.capitalize}, ID: #{person.id}, Age: #{person.age} }"
      end
    end
  else
    puts 'No people in the school, create some.'
  end
end

def create_person
  puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'

  person_type = gets.chomp.to_i
  print 'Enter name:'
  name = gets.chomp
  print 'Enter age:'
  age = gets.chomp
  person_switch(person_type, name, age)
end

def person_switch(choice, name, age)
  case choice

  when 1

    print 'Parent permission? [Y/N]:'

    parent_permission = gets.chomp.downcase == 'y'

    print 'Enter classroom:'

    classroom = gets.chomp

    new_student = Student.new(age, name, parent_permission,classroom)

    @people << new_student

    puts 'New Student created'

  when 2

    print 'Enter specialization:'

    specialization = gets.chomp

    new_teacher = Teacher.new(age, name, specialization)

    @people << new_teacher

    puts 'New Teacher created'

  else

    puts 'Invalid option'

  end
end
end
