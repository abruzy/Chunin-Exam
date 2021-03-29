require 'rails_helper'

RSpec.describe 'Link redirection', type: :request do
  it 'redirect to the original URL for a given short link' do
    url = 'https://www.notion.so/Remote-Engineering-Career-Paths-998d7d0e0f8d45c7ba5f7f2d2da7a26f'
    shortener = Shortener.new(url)
    link = shortener.generate_short_link

    get link.shortened_url
  end
end
