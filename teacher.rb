require_relative './person'
class Teacher < person
  def initialize(_classroom, age, specialization, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
