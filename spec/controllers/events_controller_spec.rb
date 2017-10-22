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
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    context "when user login" do
      let(:user) {create(:user)}
      let(:event) {build(:event)}
      before do
        sign_in user
        get :new
      end
      it "assigns a new event to @events" do
        expect(assigns[:event]).to be_a_new(Event)
      end
      it "render to :new template" do
        expect(response).to render_template :new
      end
    end
    context "when user does not login" do
      it "redirect_to new_user_session_path" do
        get :new
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "GET #show" do
    let(:user) {create(:user)}
    let(:event) {create(:event, title: "foo", user: user)}
    it "assigns a requested event to @events" do
      get :show, id: event
      expect(assigns[:event]).to eq event
    end

    it "render to :edit template" do
      get :show, id: event
      expect(response).to render_template :show
    end
  end

  describe "POST #create" do
    let(:user) {create(:user)}
    before {sign_in user}
    context "with valid attributes" do
      it "saves the new event in the database" do
        event = build(:event)
        expect do
          post :create, params: {:event => attributes_for(:event)}
        end.to change {Event.count}.by 1
      end
      it "redirects to event#index" do
        event = build(:event)
        post :create, params: {:event => attributes_for(:event)}
        expect(response).to redirect_to events_path
      end
    end
    context "with invalid attributes" do
      it "does not save the new event in the database" do
        event = build(:event)
        expect do
          post :create, params: {event: {:title => nil}}
        end.to change {Event.count}.by 0
      end
      it "redirects to event#new" do
        event = build(:event)
        post :create, params: {event: {:title => nil}}
        expect(response).to render_template :new
      end
    end
  end

end
