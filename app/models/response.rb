class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question

  POINTS_FOR_CORRECT = 10

  scope :current, -> { where("created_at >= ?", DateTime.current.beginning_of_month) }

  validates :body, presence: true
end
