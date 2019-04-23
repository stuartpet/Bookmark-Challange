require 'bookmark'

describe Bookmark do
  describe '.all' do
    it "return all bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('https://www.bbc.co.uk/news')
      expect(bookmarks).to include('https://www.theopen.com')
    end
  end
end
