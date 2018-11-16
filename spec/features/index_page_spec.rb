feature "index page" do
  scenario "should have a name input" do
    visit("/")
    expect(page).to have_field("Player")
  end
  scenario "should have a submit button" do
    visit("/")
    expect(page).to have_button('Submit')
  end
  scenario "should display name when form filled in" do
    visit("/")
    fill_in("Player", with: "Michael")
    click_button("Submit")
    expect(page).to have_content("Michael")
  end
end
