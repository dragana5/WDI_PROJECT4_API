class Swim < ApplicationRecord
  belongs_to :venue
  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_and_belongs_to_many :users
end
