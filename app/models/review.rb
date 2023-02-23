class Review < ApplicationRecord
  belongs_to :restaurant, optional: true 
  # @rating_range = (1..5)

  validates :content, :rating, presence: true
  # validates :rating, :inclusion=> { :in => @rating_range }
end
