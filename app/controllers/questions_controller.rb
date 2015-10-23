class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
  end

  def new
  end

  def check_token
    @member = member.find_by_token(params[:token])
  end

end
