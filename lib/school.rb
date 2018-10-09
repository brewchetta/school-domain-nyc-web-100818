class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name,grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade,students|
      sorted_roster[grade] = students.sort {|a,b| a <=> b}
    end
    sorted_roster
  end


end
