require 'rails_helper'

describe EventsController do
  describe "GET #index" do
    it "assigns events"
    it "render to index template"
  end

  describe "GET #new" do
    it "assigns a new event to @events"
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
