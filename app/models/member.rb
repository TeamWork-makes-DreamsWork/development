class Member < ActiveRecord::Base
  has_many :votes
  has_many :questions
  has_many :answers
  
end
