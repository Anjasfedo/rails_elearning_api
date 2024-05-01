class Assessment < ApplicationRecord
  belongs_to :course
  has_many :user_assessments, dependent: :destroy

  validates :course_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :task, presence: true
end
