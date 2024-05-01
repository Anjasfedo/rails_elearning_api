class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_question

  validates :user_id, presence: true
  validates :quiz_question_id, presence: true
  validates :is_correct, presence: true
end
