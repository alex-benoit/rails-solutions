class CoachingController < ApplicationController
  def answer
    @question = params[:query]

    if @question == @question.upcase
      @yell = "I CAN FEEL THE MOTIVATION!!!"
    end

    if @question == 'I am going to work right now!'
      @answer = "goodbye"
    elsif @question[-1] != '?'
      @answer = "I don't care, get dressed and go to work!"
    elsif @question[-1] == '?'
      @answer = "Silly question, get dressed and go to work!"
    end
  end

  def ask
  end
end
