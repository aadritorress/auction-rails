class Item < ApplicationRecord
    belongs_to :user
    belongs_to :charity
    has_many :bids
end
