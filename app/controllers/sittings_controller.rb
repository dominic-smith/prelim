class SittingsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @sitting = @question.sitting.create(params[:sitting])
    @sitting.save
    redirect_to questions_path
  end
end