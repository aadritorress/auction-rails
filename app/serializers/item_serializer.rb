class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price, :condition, :sold, :city, :user_id, :charity_id 
  has_many :bids
end
