class Venue < ApplicationRecord
  has_many :swims
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
