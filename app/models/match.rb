class Match < ApplicationRecord
  belongs_to :user_1, class_name: "User"
  belongs_to :user_2, class_name: "User"
  belongs_to :plant_1, class_name: "Plant"
  belongs_to :plant_2, class_name: "Plant"
end
