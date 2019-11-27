# code here!
class School
  
  def initialize(school_name)
    @school_name = school_name
    
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    if roster.key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    hash = {}
    roster.each do | key, value| 
      new_arr = value.sort
      hash[key] = new_arr
    end
    
    hash
  end
  
end
