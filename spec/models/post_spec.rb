require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validations' do
    context 'Presense of fields' do
      user = User.new(name: 'John', photo: '', bio: 'I am John', posts_counter: 0)

      it 'should save successfully' do
        @post = Post.create(author: user, title: 'Hello', text: 'Text', comments_counter: 0, likes_counter: 0)
        expect(@post).to be_valid
      end

      it 'No title should raise error' do
        @post = Post.create(author: user, title: nil, text: 'Text', comments_counter: 0, likes_counter: 0)
        expect(@post).to_not be_valid
      end

      it 'No comments_counter should raise error' do
        @post = Post.create(author: user, title: 'Hello', text: 'Text', comments_counter: nil, likes_counter: 0)
        expect(@post).to_not be_valid
      end

      it 'No likes_counter should raise error' do
        @post = Post.create(author: user, title: 'Hello', text: 'Text', comments_counter: 0, likes_counter: nil)
        expect(@post).to_not be_valid
      end
    end
  end
end
