require 'rails_helper'

RSpec.feature "Users can sign up" do
  scenario "with invalid attributes" do
    visit "/"

    click_link "Sign up now!"
    fill_in "Name", with: "Timothy Scott"
    fill_in "Email", with: "tim@example.com"
    fill_in "Password", with: "foo"
    fill_in "Confirmation", with: "foo"

    click_button "Create my account"
    expect(page).to have_content("The form contains 1 error.")
  end
end
