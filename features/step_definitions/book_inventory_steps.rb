Given "I have populated my inventory with several books" do
  FactoryBot.create(:book,
                    user:   @registered_user,
                    name:   "Don Quixote",
                    author: "Miguel de Cervantes")

  FactoryBot.create(:book,
                    user:   @registered_user,
                    name:   "Moby Dick",
                    author: "Herman Melville")
end

When "I visited the homepage" do
  visit root_path
end

Then "I should see the list of my books" do
  # log page.body

  expect(page).to have_content("Don Quixote")
  expect(page).to have_content("Moby Dick")
end
