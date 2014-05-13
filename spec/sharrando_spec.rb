#! /usr/bin/env ruby
require 'sharrando'
include Sharrando

describe Sharrando do
  it 'gets twitter sharring url' do
    url = sharrando_social_url(:twitter, text: 'lololol')
    expect(url).to be_eql('https://twitter.com/home?status=lololol')
  end
end