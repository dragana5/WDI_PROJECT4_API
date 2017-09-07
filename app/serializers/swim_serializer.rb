class SwimSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :startDate, :endDate, :user_ids, :users
  has_one :venue
  has_one :creator
  has_many :users
end
