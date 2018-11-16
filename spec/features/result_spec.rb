feature "result page" do
  scenario "should show a result" do
    # unsure how to do this properly
    sign_in_and_play
    choose_rock
    expect(page).to have_content(/You selected Rock, the computer selected (Rock|Paper|Scissors). (It's a draw!|(Michael|Hal) (Wins|Loses))!/)
  end
end
