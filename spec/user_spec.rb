require 'spec_helper'

RSpec.describe User do
  #describeにはdescribe User のように文字列ではなくクラスも渡せる。
  describe '#greet' do
    #「インスタンスメソッドのgreetメソッドをテストしますよ」という意味でdescribe '#greet' のように書くこともある。
    context '12歳以下の場合' do
      it '「〜だよ。」で答えること' do
        user = User.new(name: 'たろう', age: 12)
        expect(user.greet).to eq '私はたろうだよ。'
      end
    end

    context '13歳以上の場合' do
      it '「〜です。」で答えること' do
        user = User.new(name: 'たろう', age: 13)
        expect(user.greet).to eq '私はたろうです。'
      end
    end
  end

end
