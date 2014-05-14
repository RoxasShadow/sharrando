#! /usr/bin/env ruby
require 'sharrando'
include Sharrando

describe Sharrando do
  it 'gets twitter sharing url' do
    url = sharrando_on(:twitter, text: 'lololol')
    expect(url).to be_eql('https://twitter.com/home?status=lololol')
  end

  it 'gets twitter sharing url via custom helper' do
    url = sharrando_on_twitter(text: 'lololol')
    expect(url).to be_eql('https://twitter.com/home?status=lololol')
  end
end