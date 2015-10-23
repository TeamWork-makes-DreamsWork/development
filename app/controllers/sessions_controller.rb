class SessionsController < ApplicationController
  def create
    if @member && @member.authenticate
      @member.token = Securerandom.hex
      @member.save
      render json :member
    end
  end

  def destroy

  end
end
