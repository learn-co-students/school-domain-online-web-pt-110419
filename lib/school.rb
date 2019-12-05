# code here!
class School 
  
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    @school_name=school_name
    @roster = {}                        #roster should be an empty hash upon initialization but will
                                       # be built to contain keys of grade levels. 
  end 
  
   def add_student(name, grade)  #should be able to add a student to the school by calling the                                  #add_student method and giving it an arg of the students name & grade
    @roster[grade] ||= []    
    @roster[grade] << name
  end

  def grade(grade)   #takes arg of a grade 
    @roster[grade]   # returns all the students in that grade 
  end
  

  def sort
   @roster.each do |grade, name| 
     @roster[grade] = name.sort
   end 
  end  
end 

# hashes are naturally unordered , so order of keys does not matter here only order of names . 
