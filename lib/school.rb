class School
 
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = []
  end 
  
  def add_student(name,grade)
    @name[grade] = name 
    @grade = grade 
  
    @roaster[grade] << name/
  end
end 