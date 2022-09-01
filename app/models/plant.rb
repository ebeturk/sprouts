class Plant < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :marks, dependent: :destroy
  has_many :matches, dependent: :destroy
  # has_many :reviews


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :category, presence: true
  validates :category, inclusion: { in: ["Cactus and Succulents", "House Plants", "Seeds", "Trees", "Climbers", "Herbs", "Flowers", "Other"] }

end
