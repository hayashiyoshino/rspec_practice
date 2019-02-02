#require_relative '../lib/hello'
#RailsではなくRubyファイルの時はrequireする。
#Railsは自動でrequireされている。
#require_relativeを使うと相対パスで指定できる。

require 'spec_helper'

RSpec.describe Hello do
  it "message return hello" do
    expect(Hello.new.message).to eq "hello"
  end

  #describeはテストのグループ化を宣言。翻訳すると「〜をのべる、記述する、説明する」
  #itはテストをexampleという単位にまとめる役割をします。
  #it do ... endの中のエクスペクテーションが全てパスすれば、そのexampleはパスしたことになります。
  #toとeqはマッチャと呼ばれる機能。

  describe '四則演算' do
    describe '足し算' do
      it "1 + 1 は 2 になること" do
        expect(1 + 1).to eq 2
      end
   end
   describe '引き算' do
      it "10 - 1 は 9 になること" do
        expect(10 - 1).to eq 9
      end
    end

    it "全部できること" do
      expect(1 + 2).to eq 3
      expect(10 - 1).to eq 9
      expect(4 * 8).to eq 32
      expect(40 / 5).to eq 8
    end
  end
  #このように1つのexampleの中に複数のエクスペクテーションを書くのも良いが、テストが失敗した時にその先のエクスペクテーションが通過するのかしないのか判断ができなくなってしまう。


end
