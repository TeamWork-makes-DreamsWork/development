class SessionsController < ApplicationController

  def create
    if params[:email] && params[:password]
      @member = Member.find_by_email(params[:email])
      if @member && @member.authenticate(params[:password])
        generate_token
        @member.save
      else
        render json: "Invalid Login"
      end
    else
      render json: "Please enter a valid password or e-mail"
    end
  end
  def destroy
      find_member
      @member.auth_token = nil
      @member.save
    end

    private

    def generate_token
      @member.auth_token = SecureRandom.hex(10)
      @member.save
    end

    def find_member
      @member = Member.find(params[:member_id])
    end

end
