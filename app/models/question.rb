class Question < ActiveRecord::Base
  has_many :answers
  has_many :votes, as: :votes_for
  belongs_to :member
  before_create :check_token

  def member_name
    member.name
  end

  def total_vote

  end

  def better_date
    self.created_at.strftime("Created at: %m/%d?d/%y at %I:%M%p")
  end

  def search(q)
    results = Question.joins(:answers).where("genes LIKE ? OR questions.description LIKE ? OR answers.answer_text LIKE ?",q ,q ,q)
    return results
  end

end
