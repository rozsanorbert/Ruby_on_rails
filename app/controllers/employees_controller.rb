class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
    @office = Office.find(params[:office_id])
  end

  def create
    @office = Office.find(params[:office_id])
    @employee = @office.employees.create(employee_params)
    if(@employee.save)
      redirect_to office_path(@office)
    else
      render 'new'
    end
  end

  def show
    @employee = Employee.find(params[:office_id])
  end

  def edit
    @employee = Employee.find(params[:office_id])
  end

  def update
    @employee = Employee.find(params[:office_id])
    if(@employee.update(tool_params))
      redirect_to office_path(@office)
    else
      render 'edit'
    end
  end

  private def employee_params
    params.require(:employee).permit(:name, :birth, :address, :phone, :job, :salary)
  end
end
