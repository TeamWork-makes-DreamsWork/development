class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
  end

  def new
  end

  def destroy
  end
end
