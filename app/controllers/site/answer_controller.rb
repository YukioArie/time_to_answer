class Site::AnswerController < ApplicationController
  def question
    @answer = Answer.find(params[:answer_id])
  end
end
