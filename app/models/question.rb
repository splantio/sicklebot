class Question < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :multiple_choice_options
  has_many :responses
  enum type: [:multiple_choice, :short_answer]
end
