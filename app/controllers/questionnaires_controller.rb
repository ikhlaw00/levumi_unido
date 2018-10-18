class QuestionnairesController < ApplicationController
	
	before_action :set_test, only: [:save_results]

	def show 
		@measurement = Measurement.find(params[:measurement])
		@test = @measurement.assessment.test
		@student = Student.find(params[:id])
		@assessment = @measurement.assessment
	    @result = @student.getCurrentResult(@measurement.id)
		session[:s_id] = params[:id]
		session[:m_id] = params[:measurement]
		session[:t_id] = @test.id
		render 'items/userbased/_fragebogen', :layout => 'layouts/plain'
	end 

	def save_results
		responses = params
		test_length = @test.content_items.length
		results = Array.new(test_length,0) # array to save the twelve results, initially length 13 and filled with zeros
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

	# In all questionnaires there is no correct and false results, but positive and negative
	# items 4,5,6,7,9,10,11,12 have to be recoded, high value means bad results 
	def recodeDBR(results)
		coding = @test.get("code") # is needed to check which items should be recoded
		results.length.times do |i|
			if coding[i] == "1" && results[i] != 0
				results[i] = 8 -results[i]
			end
		end
		return results
	end

	private
		def set_test
			@test = Test.find(session[:t_id].to_i)
		end
end