require 'rails_helper'
RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe 'ログ投稿' do
    it 'Dive No.が空では登録できない' do
      @post.time = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Time can't be blank")
    end
    it '場所が空では登録できない' do
      @post.place = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Place can't be blank")
    end
    it '日付が空では登録できない' do
      @post.date = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Date can't be blank")
    end
  end
end
