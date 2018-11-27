require 'rails_helper'

RSpec.describe "MyComics", type: :request do
  describe "GET /my_comics" do
    it "works! (now write some real specs)" do
      get my_comics_path
      expect(response).to have_http_status(200)
    end
  end
end
