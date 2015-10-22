class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :member
  has_many :votes
end
