class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end
  def create
    vote = Vote.new(vote: params[:vote], member_id: params[:member_id], vote_for_id: params[:vote_for_id], vote_for_type: params[:vote_for_type])
   if vote.save
     render json: vote
   else
     render json: vote.errors
   end
  end

  def destroy

  end
end
