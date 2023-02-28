class Template < ApplicationRecord
  has_many :emails

  validates :name, presence: true, uniqueness: true
  validates :body, presence: true
  
  def merge_email(email)
    self.body.sub("{email}", email.body)
  end
end
