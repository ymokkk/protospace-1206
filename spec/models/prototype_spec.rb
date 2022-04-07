require 'rails_helper'

RSpec.describe Prototype, type: :model do
  before do
    @prototype = FactoryBot.build(:prototype)
  end

  describe '商品情報入力' do
    context '商品情報入力がうまくいくとき' do
      it '全ての情報が入力されていれば投稿できる' do
        expect(@prototype).to be_valid
      end
    end
    context '商品情報入力がうまくいかないとき' do
      it '商品名が空では投稿できない' do
        @prototype.title = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Title can't be blank")
      end
      it '詳細が空では投稿できない' do
        @prototype.detail = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Detail can't be blank")
      end
      it 'ポイントが空では投稿できない' do
        @prototype.point = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Point can't be blank")
      end
      it 'カテゴリーが未選択では投稿できない' do
        @prototype.category_id = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Category can't be blank")
      end
      it '画像が空では投稿できない' do
        @prototype.image = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
