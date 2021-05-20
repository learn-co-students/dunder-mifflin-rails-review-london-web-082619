class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.new(employee_params)
        @employee.save
        redirect_to employee_path(@employee)
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    def destroy
     Employee.destroy(params[:id])
        redirect_to employees_path
    end

    private

    def employee_params
        params.require(@employees).permit!
    end
end

