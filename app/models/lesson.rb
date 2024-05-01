class Lesson < ApplicationRecord
  # * Relation
  belongs_to :course
  has_many :quizzes, dependent: :destroy

  # * Callback
  before_create :set_order
  before_destroy :reorder_lessons

  # * Validation
  # TODO: Create model scaffold to auto validates presence for each column
  # validates :course_id, presence: true, uniqueness: true # ! Only for one to one relationship
  validates :course_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :order, presence: false
  validates :duration, presence: true

  def set_order
    self.order ||= (Lesson.where(course_id:).maximum(:order) || 0) + 1
  end

  def reorder_lessons
    # Get all lessons with higher order than the one being destroyed within the same course
    lessons_to_update = Lesson.where('course_id = ? AND "order" > ?', course_id, self['order'])
    # Decrement the order of each lesson
    lessons_to_update.update_all('"order" = "order" - 1') unless lessons_to_update.empty?
  end
end
