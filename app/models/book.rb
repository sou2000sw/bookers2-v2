class Book < ApplicationRecord
    
    has_one_attached :image
    belpnge_to :user
end
