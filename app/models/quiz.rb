class Quiz < ApplicationRecord
  belongs_to :lesson
  has_many :quiz_questions, dependent: :destroy

  validates :lesson_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
