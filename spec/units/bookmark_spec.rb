require 'bookmark'
describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(subject.all).to be_a Array

  end

  it 'returns a bookmark' do
    expect(subject.all).to include('http://www.google.com')

  end
end
