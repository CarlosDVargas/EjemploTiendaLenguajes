class EmployeesController < ApplicationController

    # GET
    def index
        @employees = Employee.all
    end

    # GET
    def new 
        @employee = Employee.new
    end

    # POST
    def create
    end

    # GET
    def update

    end
    

end
