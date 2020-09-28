require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '投稿' do
    context '投稿がうまくいく時' do
      it "入力フォームに入力できていれば投稿できる" do
      expect(@product).to be_valid
      end

      it "タグが未入力でも投稿できる" do
        @product.tag_list = nil
        expect(@product).to be_valid
      end
    end

    context '投稿がうまくいかない時' do
      it "imageが存在しないと投稿できない" do
        @product.images = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Images can't be blank")
      end

      it "textが存在しないと投稿できない" do
        @product.text = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Text can't be blank")
      end

      it "genre_idが存在しないと投稿できない" do
        @product.genre_id = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Genre can't be blank")
      end
      it "genre_idが、id = 1の場合に投稿できない" do
        @product.genre_id = "1"
        @product.valid?
        expect(@product.errors.full_messages).to include("Genre must be other than 1")
      end
    end
  end
end
