require 'spec_helper'

RSpec.describe User do
  #describeにはdescribe User のように文字列ではなくクラスも渡せる。
  # before do
  #   @params = { name: 'たろう' }
  # end


  describe '#greet' do
    #「インスタンスメソッドのgreetメソッドをテストしますよ」という意味でdescribe '#greet' のように書くこともある。
    let(:user) { User.new(params) }
    let(:params) { {name: 'たろう'} }
    #インスタンス変数の代わりにletを使って書くこともできる。

    context '12歳以下の場合' do
      #describe以外にもcontextという機能でテストをグループ化することもできます。
      #contextは条件を分けたりする時に使うことが多いです。
      before do
        params.merge!(age: 12)
      end
      it '「〜だよ。」で答えること' do
        expect(user.greet).to eq '私はたろうだよ。'
      end
    end

    context '13歳以上の場合' do
      before do
        params.merge!(age: 13)
      end
      it '「〜です。」で答えること' do
        expect(user.greet).to eq '私はたろうです。'
      end
    end
  end

end
