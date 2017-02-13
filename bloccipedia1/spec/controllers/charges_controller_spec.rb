require 'rails_helper'

RSpec.describe ChargesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    it "redirects to the charges show view" do
      post :create
      expect(response).to redirect_to(charges_path)
    end
  end
end
