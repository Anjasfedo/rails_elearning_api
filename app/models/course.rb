class Course < ApplicationRecord
  # * Relation
  has_many :lessons, dependent: :destroy
  has_many :enrollments, dependent: :destroy

  # * Validation
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :status, presence: true,
                     inclusion: { in: %w[active inactive pending completed draft cancelled suspended], message: '%<value>s is not valid status' }

  enum status: {
    active: 'Active',
    inactive: 'Inactive',
    pending: 'Pending',
    completed: 'Completed',
    draft: 'Draft',
    cancelled: 'Cancelled',
    suspended: 'Suspended'
  }
end
