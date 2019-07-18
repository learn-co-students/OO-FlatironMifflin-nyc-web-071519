class Department
    attr_accessor :employee, :manager

    def initialize(employee, manager)
        @employee = employee
        @manager = manager
    end


end

# Department.new({employee: , manager:})