require_relative '../lib/hello'
#RailsではなくRubyファイルの時はrequireする。
#Railsは自動でrequireされている。
#require_relativeを使うと相対パスで指定できる。


RSpec.describe Hello do
  it "message return hello" do
    expect(Hello.new.message).to eq "hello"
  end
end
