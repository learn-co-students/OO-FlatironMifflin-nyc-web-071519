class Employee

    attr_accessor :department, :salary
    attr_reader :name 

    @@all = []
    # @@tax_bracket = []

    def initialize(attr)
        @name = attr[:name]
        @department = attr[:department]
        @salary = attr[:salary]
        @@all << self
    end

    def paid_over

    end

    def find_by_department
        
    end

    def tax_bracket

    end

    def self.all
        @@all
    end

    def tax_bracket

    end

end

# Employee.new({name:, department:, salary:})