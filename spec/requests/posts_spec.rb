require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    subject { get '/users/:id/posts' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder List of Posts for a given User' do
      expect(response.body).to include('List of Posts for a given User')
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    subject { get '/users/:id/posts/:id' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder A complete Post with all Comments' do
      expect(response.body).to include('A complete Post with all Comments')
    end

    it 'should render index' do
      expect(response).to render_template(:show)
    end
  end
end
