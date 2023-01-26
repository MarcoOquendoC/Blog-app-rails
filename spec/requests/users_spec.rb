require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    subject { get '/users' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder List of Users' do
      expect(response.body).to include('List of Users')
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    subject { get '/users/:id' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder User information and list of his posts' do
      expect(response.body).to include('User information and list of his posts')
    end

    it 'should render index' do
      expect(response).to render_template(:show)
    end
  end
end
