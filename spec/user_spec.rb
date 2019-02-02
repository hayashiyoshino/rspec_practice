require 'spec_helper'

RSpec.describe User do
  describe '#greet' do
    it '12歳以下の場合「〜だよ。」で答えること' do
      user = User.new(name: 'たろう', age: 12)
      expect(user.greet).to eq '私はたろうだよ。'
    end

    it '13歳以上の場合「〜です。」で答えること' do
      user = User.new(name: 'たろう', age: 13)
      expect(user.greet).to eq '私はたろうです。'
    end
  end
end