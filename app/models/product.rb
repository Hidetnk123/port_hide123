class Product < ApplicationRecord 
  belongs_to :user
  has_many_attached :images
  has_many :comments
  has_many :product_tag_relations
  has_many :tags, through: :product_tag_relations

  with_options presence: true do
    validates :text, :images
  end
end
