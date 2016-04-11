class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      render json: question
    else
      render json: "your question was not saved."
    end
  end

  def new
  end

  def check_token
    @member = member.find_by_token(params[:token])
  end

end
