# code here!

class School
  attr_accessor :name, :roster
  attr_reader :student
  def initialize(name)
    @name = name
    @roster = {}
    def add_student(student, level)
    roster[level] ||= []
    roster[level] << student
  end
  
  def grade(level)
    roster[level]
  end
  def sort
    sorted = {}
    roster.each do |x, y|
      sorted[x] = y.sort
    end
    sorted
  end
end
end