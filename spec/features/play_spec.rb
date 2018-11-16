require_relative "web_helpers.rb"

feature "play page" do
  scenario "player can select rock" do
    sign_in_and_play
    expect(page).to have_field("Rock")
  end
  scenario "player can select paper" do
    sign_in_and_play
    expect(page).to have_field("Paper")
  end
  scenario "player can select scissors" do
    sign_in_and_play
    expect(page).to have_field("Scissors")
  end
end
