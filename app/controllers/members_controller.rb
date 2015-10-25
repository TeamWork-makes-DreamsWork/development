class MembersController < ApplicationController


  def index
    @members = Member.all
  end

  def create
    person = Member.new(user_params)
     if person.save
       render person
     elsif person.errors
       render json: "Bad Request"
     else
       render json: "Could not save member"
     end
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
    params.permit(:name, :email, :password, :token)
  end


end
