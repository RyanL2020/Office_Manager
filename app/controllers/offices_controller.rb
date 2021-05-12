class OfficesController < ApplicationController

    before_action :find_office, only: [:show]

    def index
        @offices = Office.all
    end 
    def show
    end 


    private

    def find_office
        @office = Office.find_by_id(params[:id])
    end 

    def employee_params
        params.require(:office).permit(:company_name, :location, :owner)
    end 
end
