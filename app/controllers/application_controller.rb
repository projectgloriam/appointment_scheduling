class ApplicationController < ActionController::Base
	#redirects to previous form
	def redirect_to_source
		case
		when session[:source]
			@source = session[:source] 
	      	session[:source] = nil
	      	redirect_to @source
		when params["source"]
			session[:source] = params["source"]
		end
	end

    def get_collection
      @patients = Patient.all
      @patient_dismissals = PatientDismissal.all
      @service_locations = ServiceLocation.all
      @service_types = ServiceType.all
      @appointments = Appointment.all
    end

end
