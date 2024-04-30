class Lesson < ApplicationRecord
  belongs_to :course

  # TODO: Create model scaffold to auto validates presence for each column
  # validates :course_id, presence: true, uniqueness: true # ! Only for one to one relationship
end
