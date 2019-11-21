require 'pry'


class School 
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student,grade)
    (@roster[grade] ||= []) << student
  end
  
  def grade(student)
    roster.select do |grade,students|
      if grade == student
        return students
      end
    end
  end
  
  def sort 
  nu_hash = {}
  roster.each do |grade,student| 
    nu_hash[grade] = student.sort 
  end 
  nu_hash
end 
  
  
end