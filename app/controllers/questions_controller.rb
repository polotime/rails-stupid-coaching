class QuestionsController < ApplicationController
  def ask
    #@questions = ["I am going to work"]
  end

  def answer
    @answers = ["Great!", "?", "I don't care, get dressed and go to work!"]
    @messages = params[:message]
    @answers = @messages.select { |message| message(params[:message]) }
  end
end
