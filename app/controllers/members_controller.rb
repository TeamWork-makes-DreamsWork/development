class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def create
  end

  def show
    @members = Member.all
  end

  def new
  end

  def destroy
  end
end
