require 'rails_helper'

describe 'Posts index', type: :feature do
  before do
    Post.create!(title: 'Hello, world!', body: 'Lorem ipsum dolor sit amet.')
  end

  it 'is valid HTML', js: true do
    visit '/posts'
    expect(page).to have_content('Hello, world!')
    expect(page).to be_axe_clean
  end
end
