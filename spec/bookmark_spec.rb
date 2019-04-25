require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.bbc.co.uk/news');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.theopen.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('https://www.bbc.co.uk/news')
    expect(bookmarks).to include('https://www.theopen.com')
    end
  end
end
