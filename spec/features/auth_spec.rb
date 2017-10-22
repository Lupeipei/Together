require "rails_helper"

feature "register and login", :type => :feature do
  scenario "register" do
    visit "/users/sign_up"
    expect(page).to have_content("注册")
  end
end
