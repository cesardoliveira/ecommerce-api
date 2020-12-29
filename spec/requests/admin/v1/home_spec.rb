require 'rails_helper'

describe "Home", type: :request do
  let(:user) { create(:user) }

  it "Testing Home" do 
    get '/admin/v1/home', headers: auth_header(user)
    expect(body_json) == ({ 'message' => 'Test Success' })
  end
end