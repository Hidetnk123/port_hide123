class Product < ApplicationRecord 
  belongs_to :user
  has_many_attached :images
  has_many :comments
  acts_as_taggable

  with_options presence: true do
    validates :text, :images
  end
end
