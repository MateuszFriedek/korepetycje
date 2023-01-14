class Login < ApplicationRecord
  has_one :tutor
  has_one :user
end
