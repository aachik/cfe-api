class Api::EmployeesController < ApplicationController

	def index
		render json: Employee.all
	end

	def show
		list = Employee.find(params[:id])
		render json: list
	end
end