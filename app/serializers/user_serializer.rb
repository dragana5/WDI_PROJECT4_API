class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :image
  has_many :created_swims
  has_many :swims
end
