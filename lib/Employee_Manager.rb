class EmployeeManager
    attr_accessor :manager, :employee 
    @@all = []
    def initialize(manager, employee, title)
        @manager = manager 
        @employee = employee
        @title = title
        EmployeeManager.all << self
    end
    
    def self.all 
        @@all
    end
end