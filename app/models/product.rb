class Product < ApplicationRecord 
  belongs_to :user
  has_many_attached :images
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :text, :images
  end
end
