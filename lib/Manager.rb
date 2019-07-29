# class Manager

#     attr_accessor :name, :department, :age
#     @@all=[]
#     def initialize(name, department, age)
#         @name = name
#         @department = department
#         @age = age
#         Manager.all<<self
#         @employees=[]
       
#     end




#     def task
#         Employee_Manager.all.select do |task_inst|
#             task_inst.manager == self
#         end
#     end

#     def return_employees
#         task.map do |task_instance|
#             task_instance.employee
#         end
#     end


#     def self.name 
#         puts @name
#     end

#     def self.department
#         puts @department
#     end

#     def self.all
#         @@all
#     end

    

#    # def hire_employee
#    #     Department.all.select do |department_instance|
#    #         department_instance.manager==self
#    #     end
# #
#    # end
# #
    
#     # def hire_employee((employee), salary)
#     #     Deparment.new(employee, salary, self)
#     # end



#     def employee_manager
#         Employee_Manager.all.select do | emp_manag_instance|
#             emp_manag_instance.manager == self
#         end
#     end

#     def employees
#         emoloyee_manager.map do |employee_instance|
#             employee_instance.employees
#         end
#     end
# #

#     def assign_employee(employee, title)
#         Employee_Manager(employee, self, title)
#     end
#  #   def find_by_department
#  #       employees.map do |employee_department|
#  #           employee_department.find_by_department
#  #       end
#  #   end


#     def self.age
#         puts @age
#     end


# end
class Manager

    attr_accessor :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        Manager.all << self
    end

    def employees
        emp_inst_array = EmployeeManager.all.select do |empmana_instance|
            empmana_instance.manager == self
        end
        emp_inst_array.map do |empmana_instance|
            empmana_instance.employee
        end
    end

    def hire_employee(emp_name, emp_salary)
        EmployeeManager.new(self, emp_name, emp_salary)
    end

    #CLASS METHOD
    def self.all
        @@all
    end


    def self.all_departments
        Manager.all.map do |manager_inst|
            manager_inst.department
        end
    end

    def self.average_age
        totalAge = 0
        Manager.all.map do |manager|
          totalAge += manager.age
        end
        totalAge / Manager.all.count.to_f
      end
end