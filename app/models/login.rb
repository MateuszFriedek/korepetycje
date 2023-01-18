class Login < ApplicationRecord
  has_one :tutor
  has_one :user

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
