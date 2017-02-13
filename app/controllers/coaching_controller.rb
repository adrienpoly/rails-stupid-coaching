class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message.capitalize == "I am going to work right now!"
      return ""
    elsif your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  answer = coach_answer(your_message)

  # if empty answers from basic coach_answer then return empty message
    if answer == ""
      return ""
    # test if shouted message then add motivation text or return basic answer
    elsif your_message.upcase == your_message
      return("I can feel your motivation! " + answer)
    else
      return answer
    end
  end
end
