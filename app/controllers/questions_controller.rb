class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == 'i am going to work right now!'
      # puts 'Good job!'
      return 'Good job!'
    elsif your_message.include?('?') == true
      puts 'Silly question, get dressed and go to work!'
      return  'Silly question, get dressed and go to work!'
    else
      puts "I don't care, get dressed and go to work!"
      return  "I don't care, get dressed and go to work!"
    end
  end
end
