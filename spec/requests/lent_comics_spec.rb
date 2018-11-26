require 'rails_helper'

RSpec.describe "LentComics", type: :request do
  describe "GET /lent_comics" do
    it "works! (now write some real specs)" do
      get lent_comics_path
      expect(response).to have_http_status(200)
    end
  end
end
