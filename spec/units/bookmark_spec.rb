require 'bookmark'
describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(subject.all).to be_a Array
  end
end
