feature "Add new bookmark" do
  scenario "Adds www.bbc.co.uk to bookmark list" do
    visit('/')
    click_button('Add Bookmark')
    fill_in("url", with: 'www.bbc.co.uk')
    fill_in("title", with: 'BBC')
    click_button('Add')
    expect(page).to have_content('www.bbc.co.uk')
  end
end
