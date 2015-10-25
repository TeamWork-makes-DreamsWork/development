class MembersController < ApplicationController


  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      (render 'show')
    else
      (render 'error')
    end
  end

  def show

  end

  def update
    if @user.update(user_params)
      (render 'show')
    else
      (render 'error')
    end
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
