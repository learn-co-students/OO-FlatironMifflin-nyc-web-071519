# class Employee
    
#     attr_accessor :name, :salary, :manager
#     @@all=[]
#     def initialize(name, salary)
#         @name = name
#        @salary = salary
#        Employee.all<<self
#     end

#     def self.all
#         @@all
#     end

#     def self.name
#         puts @name
#     end

#     def self.salary
#         puts @salary
#     end

#     def manager_name
#         return "#{self.manager.name}"
#     end

# end



class Employee
    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        Employee.all << self
    end

    #INSTANCE METHOD
    def manager_name
        emp_inst_arr = EmployeeManager.all.select do |emp_mana_inst|
            emp_mana_inst.employee == self
        end
        emp_inst_arr.map do |emp_mana_inst|
            emp_mana_inst.manager.name 
        end
    end
    
    def tax_bracket
        lowerEnd = self.salary - 1000
        upperEnd = self.salary + 1000
        # binding.pry
        Employee.all.select do |employee|
          if employee == self
            puts "nopeee"
          else
          # lowerEnd < employee.salary < upperEnd
            employee.salary.between?(lowerEnd,upperEnd)
          end
        end
      end


    #CLASS METHOD
    def self.all
        @@all
    end

    def self.paid_over(fixnum)
        Employee.all.select do |emp_inst|
            emp_inst.salary > fixnum
        end

    end

    def self.find_by_department(department)
        EmployeeManager.all.find do |emp_mana|
            emp_mana.manager.department == department
        end.employee
    end

end