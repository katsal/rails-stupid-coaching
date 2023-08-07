class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = ''
    stop_message = 'I am going to work right now!'
    if params[:answer] == stop_message || params[:answer] == stop_message.upcase
      @message = 'Great!'
    elsif params[:answer].end_with?('?')
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = 'I don\'t care, get dressed and go to work!'
    end
  end
end
