require_relative "Employee.rb"

class Manager < Employee
    attr_accessor :name, :title, :salary, :boss , :employees


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

d = Manager.new("darren", "manager", 78000, "Ned")
s = Employee.new("Shawna", "TA", 12000, "darren")
da = Employee.new("david", "TA", 10000, "darren")
m = Manager.new("Bob", "Boss", 123, "Kyle")
m.employees += [d, s, da]
d.employees += [s, da]
p m.employees
p m.bonus(5)
p d.bonus(4)
p da.bonus(3)