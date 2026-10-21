require 'rails_helper'

RSpec.describe "SpinHeaders", type: :request do
  describe "GET /spin_headers" do
    it "works! (now write some real specs)" do
      get spin_headers_path
      expect(response).to have_http_status(200)
    end
  end
end
