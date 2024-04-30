class Course < ApplicationRecord
  has_one :lesson, dependent: :destroy
  
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
