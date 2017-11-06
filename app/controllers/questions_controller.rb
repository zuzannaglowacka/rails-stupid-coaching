class QuestionsController < ApplicationController
  def ask
    # don't need anything
  end
  # coach_answer has the conditional
  def coach_answer(user_message)
    # conditional
    #  to paste gracefully: shift + cmd + V
    if user_message == "I am going to work right now!".upcase
      return "Great!"
    elsif user_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
  # answer gets the question from the form and feeds it to coach_answer
  def answer
    @question = params[:message]
    # get the answer from (string) from the conditional
    @answer = coach_answer(@question)
  end
end
