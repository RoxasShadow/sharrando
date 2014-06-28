#! /usr/bin/env ruby
require 'sharrando'

describe Sharrando do
  context 'using instance methods' do
    include Sharrando
  
    it 'gets twitter sharing url' do
      url = sharrando_on(:twitter, text: 'lololol')
      expect(url).to be_eql('https://twitter.com/home?status=lololol')
    end

    it 'gets twitter sharing url via custom helper' do
      url = sharrando_on_twitter(text: 'lololol')
      expect(url).to be_eql('https://twitter.com/home?status=lololol')
    end
  end

  context 'using class methods' do
    it 'gets twitter sharing url' do
      url = Sharrando.on(:twitter, text: 'lololol')
      expect(url).to be_eql('https://twitter.com/home?status=lololol')
    end

    it 'gets twitter sharing url inside a block' do
      Sharrando.configure do |on|
        url = on.twitter(text: 'lololol')
        expect(url).to be_eql('https://twitter.com/home?status=lololol')
      end
    end
  end
end