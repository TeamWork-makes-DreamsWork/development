class Vote < ActiveRecord::Base
  belongs_to :vote_for, polymorphic: true
  belongs_to :member
end
