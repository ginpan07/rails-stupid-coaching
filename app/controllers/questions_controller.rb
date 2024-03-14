class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question != ''
      if params[:question] == "I am going to work"
        @question
        @answer = "Great!"
      elsif params[:question]&.end_with?('?')
        @question
        @answer = "Silly question, get dressed and go to work!"
      else
        @question
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "Say something!"
    end
  end
end
