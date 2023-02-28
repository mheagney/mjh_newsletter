class Email < ApplicationRecord
  belongs_to :template
  validates :template_id, presence: true
  validates :subject, presence: true
  validates :body, presence: true
end
