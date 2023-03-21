require 'rails_helper'

RSpec.describe Prototype, type: :model do
  before do
    @prototype = FactoryBot.build(:prototype)
  end

  describe '投稿の保存' do
    context '投稿できる場合' do
      it '正しく記入できていれば投稿できる' do
      expect(@prototype).to be_valid  
      end
    end
    context '投稿できない場合' do
      it 'nameが空だと登録できない' do
        @prototype.name = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Name can't be blank")
      end
     
      it 'おすすめが空だと登録できない' do
        @prototype.recommendation = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Recommendation can't be blank")
      end
    
      it '使用方法が空だと登録できない' do
        @prototype.explanation = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Explanation can't be blank")
      end
      
      it '商品の種類が空だと登録できない' do
        @prototype.category_id = 1
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Category must be other than 1")
      end
     
      it '画像が空だと登録できない' do
        @prototype.image = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("Image can't be blank")
      end
      
      it 'ユーザーが空だと投稿できない' do
        @prototype.user = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include("User must exist")
      end
    end     
  end
end
