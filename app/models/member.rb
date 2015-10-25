class Member < ActiveRecord::Base
  has_many :votes
  has_many :questions
  has_many :answers
  # validates :email, uniqueness: true
  # validates :name, :email, :password, presence: true
  has_secure_password
  before_create :assign_token

  def assign_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end
end
