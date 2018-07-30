class Spy
    attr_reader :name,
                :salary,
                :licenses
  def initialize(name, salary)
    @name = name
    @salary = salary
    @licenses = []
  end
end
