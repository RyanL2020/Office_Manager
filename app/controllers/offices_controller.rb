class OfficesController < ApplicationController

    #before_action :find_office, only: [:show]

    def index
        @office = Office.all
    end 
        
    def show
        if params[:employee_id] 
            @employee = Employee.find_by_id(params[:id])
            @office = @employee.office
        else 
            find_office
         
        end 
        
    end 


    private

    def find_office
        @office = Office.find_by_id(params[:id])
    end 

    def employee_params
        params.require(:office).permit(:company_name, :location, :owner)
    end 
end
