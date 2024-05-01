class Quiz < ApplicationRecord
  belongs_to :lesson

  validates :lesson_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
