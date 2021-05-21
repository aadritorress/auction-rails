class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :username, :id
  has_many :items
  
end
