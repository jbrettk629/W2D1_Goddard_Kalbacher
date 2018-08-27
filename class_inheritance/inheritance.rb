class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def update_boss
    @boss.employees << self
  end
  
    
  def bonus(multiplier)
    bonus = @salary * multiplier
  end

end

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
      super
      @employees = []
    end

    def bonus(multiplier)
      emp_total_salary = 0
      @employees.each do |emp|
        emp_total_salary += emp.salary
      end
      bonus = emp_total_salary * multiplier
    end
    
end