class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants
  has_many :messages
  # has_many :chatrooms
  has_many :marks, :dependent :destroy
  has_many :matches, :dependent :destroy
devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
