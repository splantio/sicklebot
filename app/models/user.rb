class User < ApplicationRecord
  belongs_to :house
  has_many :questions
  has_many :responses, dependent: :destroy
end
