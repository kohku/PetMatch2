require 'rails_helper'

RSpec.describe SessionController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #failure" do
    it "returns http success" do
      get :failure
      expect(response).to have_http_status(:success)
    end
  end

end
