require 'pg'

feature "Viewing bookmarks" do
scenario "A user can see bookmarks" do
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/news');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.theopen.com');")

  visit('/bookmarks')

  expect(page).to have_content 'https://www.bbc.co.uk/news'
  expect(page).to have_content 'https://www.theopen.com'

 end
end
