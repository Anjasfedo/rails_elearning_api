class User < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  # * Secure the password input into password_digest column crypted
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: false
end
