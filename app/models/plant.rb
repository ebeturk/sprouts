class Plant < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # has_one_attached :photo
  has_many :marks
  has_many :matches
  # has_many :reviews

  validates :name, :category, presence: true
  validates :category, inclusion: { in: ["Cactus and Succulents", "House Plants", "Seeds", "Trees", "Climbers", "Herbs", "Flowers", "Other"] }

end
