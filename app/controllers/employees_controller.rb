class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = set_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
        redirect_to employees_path
    else
        render :new
    end
        

  end

  def destroy
    Employee.destroy(params[:id])
    redirect_to employees_path 
  end

  private
  def set_employee
    @employee = Employee.find(params[:id])
  end
  
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

 
end
