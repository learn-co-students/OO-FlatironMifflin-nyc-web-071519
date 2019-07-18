class Manager

    attr_accessor :department
    attr_reader :name, :age

    @@employees = []
    @@all = []
    @@ages = 0
    @@manager_count = 0

    def initialize(attr)
        @name = attr[:name]
        @department = attr[:department]
        @age = attr[:age]
        Manager.all << self
        @@manager_count += 1
        @@ages += @age
    end

    def self.all 
        @@all
    end

    def hire_employees
        
    end

    def self.average_age
        old_farts = @@ages / @@manager_count
        old_farts.to_f
    end

    def self.manager_count
        @@manager_count
    end

    def self.ages
        @@ages
    end

end

    # Manager.new({name: , department:, age: })