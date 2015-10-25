class MembersController < ApplicationController


  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)
    @member.save ? (render 'show'):(render 'error')
  end

  def show

  end

  def new
  end

  def destroy
    @member.destroy
    render json: "Member deleted"
  end
private

  def member_params
    params.permit(:name, :email, :password)
  end


end
