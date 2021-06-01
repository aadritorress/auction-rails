class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount, :item_id, :user_id
end