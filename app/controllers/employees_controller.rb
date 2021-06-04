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

    def new
        if params[:user_id]  
            find_user
            @employee = @user.employees.build
            
            
         else  
            
            redirect user_path(@user) 
        end
   
    end
    

    def create
        if params[:user_id]
            find_user
            @employee = @user.employees.build(employee_params) 
        
        
        else
            redirect_to user_employees_path(@user)
        end
        if @employee.save
         

            if @user
                redirect_to user_employee_path(@user, @employee)
            else
                redirect_to @employee 
                 
            end
        else
            
            render :new
        end
    end
         
            
                  


    private

    def find_employee
        @employee = Employee.find_by_id(params[:id])
    end 

    def find_user
        @user = User.find_by_id(params[:user_id])

    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :title, :user_id, :office_id)
    end 

    
end


            







        

