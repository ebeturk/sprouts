class Plant < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_one_attached :photo
  has_many :marks
  has_many :matches

  validates :name, :category, presence: true
  validates :category, inclusion: { in: ["Cactus and Succulents", "House Plants", "Seeds", "Trees", "Climbers", "Herbs", "Flowers", "Other"] }

end
