class Employee

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = 0
        employees.each do |employee|
            bonus += employee.salary
        end
        bonus * multiplier
    end

end