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

  end

  def new
  end

  def destroy
  end
end
