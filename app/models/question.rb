class Question < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :multiple_choice_options
  has_many :responses
  enum format: [:multiple_choice, :short_answer]

  validates :body, presence: true
  validates :answer, presence: true
end
