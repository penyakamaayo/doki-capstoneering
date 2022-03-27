class PatientsController < ApplicationController
	before_action :set_patient, only: %i[ show edit update destroy ]

	def dashboard
	end

	private
	def set_patient
		@patient = Patient.find(params[:id])
	end
end
