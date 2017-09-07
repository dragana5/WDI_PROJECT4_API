class User < ApplicationRecord
  has_secure_password
  has_many :created_swims, foreign_key: :created_by, class_name: "Swim"
  has_and_belongs_to_many :swims

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true, length: {:within => 2..10}
end
