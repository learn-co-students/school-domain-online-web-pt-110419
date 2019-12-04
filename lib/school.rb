class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      if @roster[grade]
          @roster[grade] << student
       else
          @roster[grade] = []
          @roster[grade] << student
       end
   end

   def grade(num)
      return @roster[num]
   end

   def sort
     h = {}
     @roster.each do|x,y|
       h[x] = y.sort
     end
      h
   end

end
