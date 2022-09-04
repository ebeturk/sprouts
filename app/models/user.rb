class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants
  has_many :messages

  has_many :chatrooms #, dependent: :destroy

  has_many :marks
  has_many :matches
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
