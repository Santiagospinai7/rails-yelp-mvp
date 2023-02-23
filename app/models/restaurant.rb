class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @allowed_category = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, :inclusion=> { :in => @allowed_category }
  validates :name, :address, :category, presence: true
end
