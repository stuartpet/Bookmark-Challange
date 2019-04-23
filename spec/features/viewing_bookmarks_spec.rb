feature "Viewing bookmarks" do
scenario "View bookmarks" do
  visit('/bookmarks')
  expect(page).to have_content 'https://www.bbc.co.uk/news'
  expect(page).to have_content 'https://www.theopen.com'
 end
end
