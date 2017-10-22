require "rails_helper"

RSpec.describe "Homepage" do
  it "route root path to welcome#index" do
    expect(get: "/").to route_to(controller: "welcome", action: "index")
  end
end
