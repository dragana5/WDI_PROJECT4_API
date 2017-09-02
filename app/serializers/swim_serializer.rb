class SwimSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :startDate, :endDate
  has_one :venue
  has_one :user
end
