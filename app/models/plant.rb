class Plant < ApplicationRecord
  belongs_to :user
  # has_many :markings
  # has_many :reviews


  # has_one_attached :photo
  validates :name, :category, presence: true
  validates :category, inclusion: { in: ["cactus and succulents", "seeds", "trees", "climbers", "herbs", "flowers"] }

end
