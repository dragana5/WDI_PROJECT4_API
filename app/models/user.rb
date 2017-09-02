class User < ApplicationRecord
  has_many :swims
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end
