class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants
  has_many :messages

  has_many :chatroom_as_user_1, class_name: "Chatroom", foreign_key: :user_1_id, dependent: :destroy
  has_many :chatrooms_as_user_2, class_name: "Chatroom", foreign_key: :user_2_id, dependent: :destroy

  has_many :marks
  has_many :matches

devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
