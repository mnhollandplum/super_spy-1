require 'pry'
class Organization
  def initialize(name)
    @spies = []
    @salaries = []
  end

  def add_spy(spy)
    @spies << spy
  end

  def to_kill
    kills = "None"
    @spies.each do |spy|
      if spy.licenses.include?("to kill")
        kills = "* #{spy.name}"
      end
    end
  kills
  end

  def to_ill
    ills = []
    @spies.each do |spy|
      if spy.licenses.include?("to ill")
        ills << "* #{spy.name}"
      end
    end
  ills.join("\n")
  end

  def average_salary
    @spies.each do |spy|
      @salaries << spy.salary
    end
    @salaries.sum/@spies.count
  end

  def lowest_salary
    lowest_salary= []
    lowest_salary << organize_salaries[0]
  end

  def highest_salary
    highest_salary = []
    highest_salary << organize_salaries[-1]
  end

  def organize_salaries
    @spies.sort_by do |spy|
      spy.salary
    end



  end

end
