class User < ApplicationRecord
  belongs_to :house
  has_many :questions
  has_many :responses, dependent: :destroy

  def current_score
    responses.current.count(&:correct) * Response::POINTS_FOR_CORRECT
  end

  def total_score
    responses.all.count(&:correct) * Response::POINTS_FOR_CORRECT
  end
end
