class Api::CompetencesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		render json: Competence.all
	end

	def show
		list = Competence.find(params[:id])
		render json: list
	end
	def create
		list = Competence.new(list_params)
		if list.save
			render json: {
				status: 200,
				message: "Se creo la competencia correctamente",
				employee: list
			}.to_json
		else
			render json: {
				status: 500,
				errors: list.errors
			}.to_json
		end
	end
	private
	def list_params
		params.require("competence").permit("name")
	end
end