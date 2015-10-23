class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :member
  has_many :votes

  #before_create :check_token
end
