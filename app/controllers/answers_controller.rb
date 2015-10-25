class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: answer
      end
    else
      render json: "your answer was not created."
    end
  end

  def new
  end

  def update
    if @answer.update(answer_params)
      @answer.accepted_answer == true
      @answer.save
    else
      @answer.accepted_answer == false
    end
  end

  def check_token
    @member = member.find_by_token(params[:token])
  end

end
