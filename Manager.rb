require_relative "Employee"

class Manager < Employee
    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        sub_salary * multiplier
    end

    def sub_salary
        total = 0
        @employees.each do |employee|
            total += employee.sub_salary if employee.is_a?(Manager)
            total += employee.salary if employee.is_a?(Employee)
        end
        total
    end

    def add_employee(employee)
        @employees << employee
    end
end

# ned = Manager.new("Ned", "Founder", 1000000, nil)
# darren = Manager.new("Darren", "TA Manager", 78000, ned)
# shawna = Employee.new("Shawna", "TA", 12000, darren)
# david = Employee.new("David", "TA", 10000, darren)

# p ned.bonus(5)
# p darren.bonus(4)
# p david.bonus(3)