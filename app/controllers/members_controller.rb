class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def create
  end

  def show
    @member = Member.find(params[:id])
    if member.check_token == params[:token]
      render json: member
    else
      render json: "Nice try, haxor"
    end
  end

  def new
  end

  # def destroy
  # end
end
