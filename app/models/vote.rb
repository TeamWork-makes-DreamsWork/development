class Vote < ActiveRecord::Base
  belongs_to :member
  belongs_to :answer
  belongs_to :question
end
