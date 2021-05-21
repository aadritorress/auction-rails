class Charity < ApplicationRecord
    has_many :items 
    has_many :purchases, through: :items
end
