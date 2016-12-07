require 'rails_helper'

RSpec.describe "Pokedexes", type: :request do
  describe "GET /pokedexes" do
    it "works! (now write some real specs)" do
      get pokedexes_path
      expect(response).to have_http_status(200)
    end
  end
end
