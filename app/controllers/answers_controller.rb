class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def create
  end

  def new
  end

  # def destroy
  # end
end
