class Product < ApplicationRecord 
  belongs_to :user
  has_many_attached :images
  has_many :comments
  acts_as_taggable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :text, :images
  end
end
