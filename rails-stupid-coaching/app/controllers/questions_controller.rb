class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  private

  def coach_answer(your_message)
    if your_message == 'I am going to work right now!'
      return nil
    elsif your_message.include? '?'
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
