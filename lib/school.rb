# code here!
class School
  
  attr_reader :school
  attr_accessor :roster
  
def initialize(school, roster = {})
  @school = school
  @roster = roster
end

def add_student(name, grade)
	if @roster.has_key?(grade)
	@roster[grade] << name
	else
		@roster[grade] = []
		@roster[grade] << name
	end
end

def grade(grade)
  return @roster[grade]
end
def sort
  return @roster.each_value{|value| value.sort![0][1]}
  
end

end