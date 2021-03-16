require_relative "Employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        (self.sub_salary) * multiplier
    end

    def sub_salary
        total = 0
        employees.each do |employee|
            total += employee.sub_salary if employee.is_a?(Manager)
            total += employee.salary if employee.is_a?(Employee)
        end
        total
    end

    def add_employee(employee)
        @employees << employee
    end
end

# shawna = Employee.new("Shawna", "TA", 12000, "Darren")
# david = Employee.new("David", "TA", 10000, "Darren")
# darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
# ned = Manager.new("Ned", "Founder", 1000000, nil)

# ned.add_employee(darren)
# darren.add_employee(david)
# darren.add_employee(shawna)

# p ned.bonus(5)
# p darren.bonus(4)
# p david.bonus(3)