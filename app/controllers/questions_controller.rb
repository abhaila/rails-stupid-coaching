class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search_query = params['question']
    answer_1 = 'Hi'
    answer_2 = Time.now.strftime('%I:%M:%S %p')

    if @search_query == 'hello'
      @answer = answer_1
    elsif @search_query == 'what time is it?'
      @answer = answer_2
    else
      @answer = "I don't know the answer to that question"
    end
  end
end
