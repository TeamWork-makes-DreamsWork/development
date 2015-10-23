class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def create
    @votes = Vote.all
  end

  def show
    @votes = Vote.all
  end

  def new
    @votes = Vote.all
  end
end
