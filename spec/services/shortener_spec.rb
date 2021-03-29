require 'rails_helper'

RSpec.describe Shortener do
  it 'shortens a given URL to a 7 long character lookup code' do
    url = 'https://favoritewebsite.com/articles/how-to-cook'
    shortener = Shortener.new(url)
    expect(shortener.lookup_code.length).to eq(7)
  end

  it 'gives each URL it own lookup code' do
    url = 'https://favoritewebsite.com/articles/how-to-cook'
    shortener = Shortener.new(url)
    code_1 = shortener.lookup_code

    url = 'https://favoritewebsite.com/articles/how-to-bake'
    shortener = Shortener.new(url)
    code_2 = shortener.lookup_code

    expect(code_2).not_to eql(code_1)
  end

  it 'generate a Link record with a unique lookup code' do
    url = 'https://favoritewebsite.com/articles/how-to-cook'
    shortener = Shortener.new(url)
    link = shortener.generate_short_link
    expect(link.valid?).to be(true)
  end
end
