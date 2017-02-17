require 'spec_helper.rb'

feature 'Viewing books' do

  scenario 'I can see existing books on the homepage' do
    Book.create(title: 'A Book')

    visit '/'
    expect(page.status_code).to eq 200

    within 'ul#books' do
      expect(page).to have_content('A Book')
    end
  end
end
