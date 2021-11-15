class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @cena = ""
    if @answer == "I am going to work"
      @cena = "Great!"
    elsif @answer.include?"?"
      @cena = "Silly question, get dressed and go to work!"

    else
     @cena= "I don't care, get dressed and go to work!"
    end
  end
end
