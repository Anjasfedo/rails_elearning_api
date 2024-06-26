class User < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :user_quizzes, dependent: :destroy
  has_many :user_assessments, dependent: :destroy
  # * Secure the password input into password_digest column crypted
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: false
end
