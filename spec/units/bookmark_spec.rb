require 'bookmark'
describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(Bookmark.all).to be_a Array

  end

  it 'returns a bookmark' do

    expect(Bookmark.all).to include({:title=>'google', :url=>"http://www.google.com"})

  end

  it 'adds a bookmark ' do
    Bookmark.add('BBC', 'http://www.bbc.co.uk')
    expect(Bookmark.all).to include({:title => 'BBC', :url => 'http://www.bbc.co.uk'})
  end
end
