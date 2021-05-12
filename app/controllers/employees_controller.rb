class EmployeesController < ApplicationController

    before_action :find_employee, only: [:show]

    def index
        if params[:user_id]
            find_user
            @employees = @user.employees
        else 
         @employees = Employee.all
        end 
    end 

    def show 
    end 

    private

    def find_employee
        @employee = Employee.find_by_id(params[:id])
    end 

    def find_user
        @user = User.find_by_id(params[:user_id])
    end 

    def employee_params
        params.require(:employee).permit(:firs_name, :last_name, :title, :user_id, :office_id)
    end 
end
