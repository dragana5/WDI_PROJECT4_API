class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :image, :venue_rules
  has_many :swims
end
