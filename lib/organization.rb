require 'pry'
class Organization
  def initialize(name)
    @spies = []
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
end
