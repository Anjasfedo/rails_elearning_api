class Lesson < ApplicationRecord
  belongs_to :course

  # validates :course_id, uniqueness: true
end
