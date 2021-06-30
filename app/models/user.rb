class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :password, presence: true, length: { minimum: 5 }
end
