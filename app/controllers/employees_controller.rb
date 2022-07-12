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
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path, notice: "Employee created successfully"
        else
            render :new, status: :unprocessable_entity
        end 
    end

    # GET
    def update

    end

    private 
    def employee_params
        params.require(:employee).permit(:name, :phone)
    end
end
