class QuestionnairesController < ApplicationController
	def show 
		@measurement = Measurement.find(params[:measurement])
		@test = @measurement.assessment.test
		@student = Student.find(params[:id])
		@assessment = @measurement.assessment
	    @result = @student.getCurrentResult(@measurement.id)
		session[:s_id] = params[:id]
		session[:m_id] = params[:measurement]
		session[:r_id] = params[@result.id]
		render 'items/userbased/_fragebogen', :layout => 'layouts/plain'
	end 

	def save_results
		responses = params
		results = Array.new(13,0) # array to save the twelve results, initially length 13 and filled with zeros
		responses.map{|k,v| results[k.to_i] = v.to_i if k.length <3}  
		results  = recodeDBR(results)
		results.shift # delete item at index 0, the length will be 12
		@measurement = Measurement.find(session[:m_id].to_i)
		result = Student.find(session[:s_id].to_i).getCurrentResult(session[:m_id])
		result.parse_fragebogen(results.join(','))
		@assessment = @measurement.assessment
		@group = @assessment.group
		@user = @group.user
		render "results/tests/Generisch",  :layout => 'layouts/plain'
	end

	# In all questionnaires there is no correct and false results, but good and bad
	# items 4,5,6,7,9,10,11,12 have to be recoded, high value means bad results 
	def recodeDBR(results)
		results.length.times do |i|
			if results[i] != 0 && !((i >= 1 && i  <= 3) || i == 8) 
				results[i] = 8 - results[i]
			end
		end
		return results
	end
end