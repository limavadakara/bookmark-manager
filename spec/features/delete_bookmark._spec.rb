feature 'As a user I want to ' do
  scenario 'delete a bookmark' do
    visit("/bookmarks")
    choose("google")
    click_button('Delete')
    expect(page).not_to have_link 'google', href: 'http://www.google.co.uk'
  end
end
