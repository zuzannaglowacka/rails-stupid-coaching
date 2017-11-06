class QuestionsController < ApplicationController
  def ask
    # don't need anything
  end

  def answer
    @question = params[:message]
    # conditional
    #  to paste gracefully: shift + cmd + V
    if @question == "I am going to work right now!".upcase
      return "Great!"
    elsif @question.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
