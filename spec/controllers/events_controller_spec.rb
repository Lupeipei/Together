require 'rails_helper'

describe EventsController do
  describe "GET #index" do
    let(:user) {create(:user)}
    let(:event1) {create(:event, title: "foo", user: user)}
    let(:event2) {create(:event, title: "bar", user: user)}
    it "assigns events" do
      get :index
      expect(assigns[:events]).to eq([event1,event2])
    end
    it "render to index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #new" do
    it "assigns a new event to @events" do
    it "render to :new template"
  end

  describe "GET #show" do
    it "assigns a requested event to @events"
    it "render to :edit template"
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new event in the database"
      it "redirects to event#index"
    end
    context "with invalid attributes" do
      it "does not save the new event in the database"
      it "redirects to event#new"
    end
  end

end
