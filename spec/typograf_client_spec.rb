require "spec_helper"

RSpec.describe TypografClient do
  it "has a version number" do
    expect(TypografClient::VERSION).not_to be nil
  end

  it "must have class Request and it should raise exception without args" do
    allow(TypografClient::Request).to receive(:new).and_return(ArgumentError)
  end

  describe 'Request' do    
    describe "#result" do
      let(:text) { 'Брат Фрэнсис Джерард из Юты, постившийся в пустыне, возможно, и не нашел бы священные документы, если бы не паломник с препоясанными чреслами.' }
      let(:result) { TypografClient::Request.new(text).result }

      it "returns an string" do
        expect(result).to be_instance_of(String)
      end  

      it "by default, must render text without configuration" do
        expect(result).to eq("<p>Брат Фрэнсис Джерард из&nbsp;Юты, постившийся в&nbsp;пустыне, возможно, и&nbsp;не&nbsp;нашел&nbsp;бы священные документы, если&nbsp;бы не&nbsp;паломник с&nbsp;препоясанными чреслами.<br />\n</p>")
      end
    end
  end

end
