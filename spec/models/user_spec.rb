require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての記入欄が正しくできていれば登録できる' do
        expect(@user).to be_valid
      end
    end
  end
   context '新規登録できないとき' do
    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
  
   it 'emailが空では登録できない' do
     @user.email = ''
     @user.valid?
    expect(@user.errors.full_messages).to include("Email can't be blank")
    end
  
   it 'passwordが空では登録できない' do
    @user.password = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")
  end
  
   it 'passwordとpassword_confirmationが不一致では登録できない' do
    @user.password = '123456'
    @user.password_confirmation = '1234567'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end 

  it 'emailは@を含まないと登録できない' do
    @user.email = 'testemail'
    @user.valid?
    expect(@user.errors.full_messages).to include("Email is invalid")
  end

  it 'passwordが5文字以下では登録できない' do
    @user.password = '12345'
    @user.password_confirmation = '12345'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
  end

  it '年齢が空だと登録できない' do
    @user.year_id = 1
    @user.valid?
    expect(@user.errors.full_messages).to include("Year must be other than 1")
  end

  it '肌が空だと登録できない' do
    @user.skin_id = 1
    @user.valid?
    expect(@user.errors.full_messages).to include("Skin must be other than 1")
  end
end

end
