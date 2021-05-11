require_relative "Employee.rb"

class Manager < Employee
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        sum = 0

        @employees.each do |employee|
            sum += employee.salary 
        end

        sum * multiplier
    end
end

d = Employee.new("darren", "manager", 78000, "Ned")
s = Employee.new("Shawna", "TA", 12000, "darren"
m = Manager.new("Bob", "Boss", 123, "Kyle", [d, s])
p m.bonus(5)