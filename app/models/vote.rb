class Vote < ActiveRecord::Base
  belongs_to :member
  belongs_to :answer
  belongs_to :question

  def total_vote
    array = []
    if @vote.vote == true
      array << 1
    else
      array << -1
    end
    array.inject(:+)
  end
  
end
