require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
     context 'コメントが登録できるとき' do
      it 'コメント欄が正しく入力されていれば投稿できる' do
        expect(@comment).to be_valid
      end
    
     context 'コメントが投稿できないとき' do
      it 'コメントが空だと登録できない' do
        @comment.content = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Content can't be blank")
      end
    
      it 'userが空だと登録できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User must exist")
      end
      
      it 'prototypeが空だと登録できない' do
        @comment.prototype = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Prototype must exist")
      end
      
     end
   end
 end
end