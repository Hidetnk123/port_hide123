class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, dependent: :destroy
  has_many :comments

  with_options presence: true do
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    number = /\A[a-zA-Z0-9]+\z/
    validates :nickname
    validates :email, {uniqueness: true, format: {with: VALID_EMAIL_REGEX}}
    validates :password, {length: { minimum: 6 }, confirmation: true, format: { with: number }}
  end
end
