class Api::EmployeesController < ApplicationController

	def index
		render json: Employee.all
	end

	def show
		list = Employee.find(params[:id])
		render json: list
	end

	def create
		list = Employee.new(list_params)
		if list.save
			render json: {
				status: 200,
				message: "Se creo el empleado correctamente",
				employee: list
			}.to_json
		else
			render status: 422, json: {
				errors: list.errors
			}.to_json
		end
	end

	private
	def list_params
		params.require("employee").permit("name")
	end
end