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

  it "1 + 1 は 2 になること" do
    expect(1 + 1).to eq 2
  end

  it "10 - 1 は 9 になること" do
    expect(10 - 1).to eq 9
  end
end
