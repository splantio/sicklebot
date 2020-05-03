class House < ApplicationRecord
  has_many :users

  def current_score
    users.sum(&:current_score)
  end

  def total_score
    users.sum(&:total_score)
  end
end
