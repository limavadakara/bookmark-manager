require 'bookmark'
describe Bookmark do
  before :each do
    Bookmark.start
  end
  it 'returns a list of bookmarks' do
    expect(Bookmark.bookmark.all).to be_a Array

  end

  it 'returns a bookmark' do
    expect(Bookmark.bookmark.all).to include('http://www.google.com')

  end

  it 'adds a bookmark ' do
    Bookmark.bookmark.add('BBC', 'http://www.bbc.co.uk')
    expect(Bookmark.bookmark.all).to include('http://www.bbc.co.uk')
  end
end
