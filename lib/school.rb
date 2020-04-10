require "pry" 

class School
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name 
    else
      @roster[grade] = [name]
    end
      
      #@roster[grade] = []
      
  end
  
  def grade(num)
    @roster[num]
  end  
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end
