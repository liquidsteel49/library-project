require 'rails_helper'

RSpec.describe "Illustrators", type: :request do
  describe "GET /illustrators" do
    it "works! (now write some real specs)" do
      get illustrators_path
      expect(response).to have_http_status(200)
    end
  end
end
