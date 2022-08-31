class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants
  has_many :messages

has_many :interests
devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
