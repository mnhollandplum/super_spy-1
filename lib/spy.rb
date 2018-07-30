class Spy
    attr_reader :name,
                :salary,
                :licenses
  def initialize(name, salary)
    @name = name
    @salary = salary
    @licenses = []
  end

  def add_license(license)
    @licenses << license.type
    p "License #{license.type} added successfully."
  end

  def report
    "Name: #{@name}\n    Qualifications:\n    - License #{@licenses.join("\n    - License ")}"
  end


end
