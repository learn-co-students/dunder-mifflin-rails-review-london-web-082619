class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      redirect_to employee_path(@employee.id)
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    if @employee.valid?
      redirect_to employee_path(@employee.id)
    else
      render :edit
    end
  end
  
  def destroy
  end

  private

  def employee_params
    params.require(:employee).permit!
  end
end