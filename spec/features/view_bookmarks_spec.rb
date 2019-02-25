feature 'As a user I want to ' do
  scenario 'see all my bookmarks' do
    visit "/"
    expect(page).to have_content "Here are your bookmarks"
  end
end
