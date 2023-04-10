require_relative "./person"
class Teacher < person
  def initialize (name="unknown",age,classroom,parent_permission=true,specialization)
    super (age,name,parent_permission)
    @specialization=specialization
  end
  def can_use_service?
   true
  end