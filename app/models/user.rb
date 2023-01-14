class User < ApplicationRecord
  has_many :reviews
  has_many :klasses
  belongs_to :login
end
