class User < ApplicationRecord
  has_secure_password
  has_many :swims
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true, length: {:within => 2..10}
end
