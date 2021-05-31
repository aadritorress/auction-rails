class CharitySerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :address, :bio, :donations 
end
