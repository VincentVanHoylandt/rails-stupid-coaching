class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answer] == "I'm going to work"
      @answers = 'Great!'
    elsif params[:answer].end_with?('?')
      @answers = 'Silly question, get dressed and go to work!'
    else
      @answers = "I don't care, get dressed and go to work!"
      # @anwers.select { |answer| answers.start_with?(params[:answer]) }
    end
  end
end
