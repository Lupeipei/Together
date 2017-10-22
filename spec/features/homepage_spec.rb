require "rails_helper"

RSpec.describe "Home" do
  before {visit root_url}
  scenario "独乐乐不如众乐乐" do
    expect(page).to have_text "独乐乐不如众乐乐"
  end
  scenario "has navbar element" do
    expect(page).to have_css "nav.navbar-default"
  end
end
