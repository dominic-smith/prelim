class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer].permit(:pdf))
    redirect_to question_path(@question)
  end
                              
end
