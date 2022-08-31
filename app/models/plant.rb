class Plant < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :wants
  has_many :matches
  # has_many :reviews


  # has_one_attached :photo
  validates :name, :category, presence: true
  validates :category, inclusion: { in: ["Cactus and Succulents", "House Plants", "Seeds", "Trees", "Climbers", "Herbs", "Flowers", "Other"] }

end
