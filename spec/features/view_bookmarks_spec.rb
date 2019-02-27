
feature 'As a user I want to ' do
  scenario 'see all my bookmarks' do
    visit "/bookmarks"
    expect(page).to have_content "Here are your bookmarks"
    expect(page).to have_link 'makers', href: 'http://www.makersacademy.com'
  end
end
