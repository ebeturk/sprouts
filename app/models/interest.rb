class Interest < ApplicationRecord
  has_many :plants
  has_many :users
end
