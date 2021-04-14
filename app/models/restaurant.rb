class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
            message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end


