class UserAssessment < ApplicationRecord
  belongs_to :user
  belongs_to :assessment

  validates :user_id, presence: true
  validates :assessment_id, presence: true
  validates :is_accepted, presence: false
end
