def sign_in_and_play
  visit("/")
  fill_in("Player", with: "Michael")
  click_button("Submit")
end

def choose_rock
  choose 'Rock'
  click_button("Submit")
end
