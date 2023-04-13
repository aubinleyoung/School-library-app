require_relative './person'
attr_accessor :name, :classroom

class Student < Person
  def initialize(classroom, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    @name = name
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
