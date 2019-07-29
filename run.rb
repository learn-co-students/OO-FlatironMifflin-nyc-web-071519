require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative 'lib/Employee_Manager'
require 'pry'

mana1 = Manager.new("Jenn", "Finance", 33)
mana2 = Manager.new("Gina", "Finance", 35)
mana3 = Manager.new("Ann", "Finance", 39)


emp1 = Employee.new("John", 90000)
emp2 = Employee.new("Joseph", 75000)
emp3 = Employee.new("Steph", 99000)
emp4 = Employee.new("Andrew", 65000)

em1 = EmployeeManager.new(mana1, emp1, "Manager of emp1")
em2 = EmployeeManager.new(mana1, emp2, "Manager of emp1")
em3 = EmployeeManager.new(mana2, emp3, "Manager of emp1")
em4 = EmployeeManager.new(mana2, emp4, "Manager of emp1")

binding.pry
puts "done"
