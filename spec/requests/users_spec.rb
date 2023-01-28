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
    subject do
      first_user = User.create(name: 'Tom', photo: '', bio: 'Teacher from Mexico.', posts_counter: 0)
      second_user = User.create(name: 'Lilly', photo: '', bio: 'Teacher from Poland.', posts_counter: 0)
      first_post = Post.create(author: first_user, title: 'Title 1', text: 'post text 1', comments_counter: 0, likes_counter: 0)

      Post.create(author: first_user, title: 'Title 2', text: 'post text 2', comments_counter: 0, likes_counter: 0)
      Post.create(author: first_user, title: 'Title 3', text: 'post text 3', comments_counter: 0, likes_counter: 0)
      Post.create(author: first_user, title: 'Title 4', text: 'post text 4', comments_counter: 0, likes_counter: 0)
      Comment.create(post: first_post, author: second_user, text: 'Comment 1' )
      Comment.create(post: first_post, author: second_user, text: 'Comment 2' )
      Comment.create(post: first_post, author: second_user, text: 'Comment 3' )
      Comment.create(post: first_post, author: second_user, text: 'Comment 4' )
      Comment.create(post: first_post, author: second_user, text: 'Comment 5' )
      Comment.create(post: first_post, author: second_user, text: 'Comment 6' )
      get "/users/#{first_user.id}"
    end

    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder User information and list of his posts' do
      expect(response.body).to include('See all posts')
    end

    it 'should render show' do
      expect(response).to render_template(:show)
    end
  end
end
