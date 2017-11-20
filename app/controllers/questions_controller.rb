class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:question]
    @answer = coach_logic(@user_input)
  end

  private
  def coach_logic(user_input)
    if user_input == "I am going to work"
      "Great!"
    elsif user_input[-1] == "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end


