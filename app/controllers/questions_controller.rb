class QuestionsController < ApplicationController
  def ask; end

	def answer
		@question = params[:question]
		@answer = coach_logic
	end

	private
	
	def coach_logic
		if @question == "I am going to work"
			return "Great"
		elsif @question.last.include?"?"
			return "Silly question, get dressed and go to work!"
		else 
			return "I don't care, get dressed and go to work!"
		end
	end
end
