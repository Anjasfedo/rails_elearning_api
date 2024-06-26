class QuizQuestion < ApplicationRecord
  belongs_to :quiz
  has_many :user_quizzes, dependent: :destroy

  validates :quiz_id, presence: true
  validates :question_text, presence: true
  validates :correct_answer, presence: true
  validates :wrong_answer1, presence: true
  validates :wrong_answer2, presence: true
  validates :wrong_answer3, presence: true
end
