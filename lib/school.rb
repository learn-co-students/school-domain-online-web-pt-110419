class 
  attr_accessor :roster, :student, :school
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] << student
  end
end
