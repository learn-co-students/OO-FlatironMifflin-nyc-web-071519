require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
Manager.new({name: "Bill", department: "A", age: 24})
Manager.new({name: "Charlie", department: "A", age: 24})
Manager.new({name: "Doug", department: "A", age: 24})
Manager.new({name: "Edward", department: "A", age: 24})
Employee.new({name: "Fred", department: "A", salary: 100000})
Employee.new({name: "George", department: "A", salary: 100000})
Employee.new({name: "Harry", department: "A", salary: 100000})

binding.pry
puts "done"
