require "rails_helper"

RSpec.describe StaticPagesController, :type => :controller do
  describe "GET home" do
    it "has a 200 status code" do
      get :home
      expect(response.status).to eq(200)
    end
  end

  describe "GET help" do
    it "has a 200 status code" do
      get :help
      expect(response.status).to eq(200)
    end
  end

  describe "GET about" do
    it "has a 200 status code" do
      get :about
      expect(response.status).to eq(200)
    end
  end

  describe "GET contact" do
    it "has a 200 status code" do
      get :contact
      expect(response.status).to eq(200)
    end
  end
end
