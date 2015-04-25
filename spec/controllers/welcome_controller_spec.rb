require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #accueil" do
    it "returns http success" do
      get :accueil
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #profil" do
    it "returns http success" do
      get :profil
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #experiences" do
    it "returns http success" do
      get :experiences
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #galerie" do
    it "returns http success" do
      get :galerie
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
