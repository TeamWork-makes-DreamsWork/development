class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      render json: member
    else
      render json: "Your member was not created."
    end
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
