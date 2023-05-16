class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user_1, class_name: "User"
  belongs_to :user_2, class_name: "User"
end
