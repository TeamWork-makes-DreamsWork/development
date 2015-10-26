class MembersController < ApplicationController


  def index
    @members = Member.all
  end

  def create
    m = Member.new(member_params)
     if m.save
       render json: m
     else
       render json: "Could not save member"
     end
  end

  def show

  end

  def new
    @member = Member.new
  end

  def update
    if @member.update(member_params)
      redirect_to @member, notice: 'Member was successfully updated.'
    else
      render json: "Update Unsuccessful"
    end
  end

  def destroy
    @member.destroy
    render json: "Member destroyed"
  end
private

def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.permit(:name, :email, :password_digest)
  end

end
