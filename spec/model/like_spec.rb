require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Validations' do
    context 'Presense of fields' do
      user = User.new(name: 'John', photo: '', bio: 'I am John', posts_counter: 0)
      post = Post.new(author: user, title: 'Hello', text: 'Text', comments_counter: 0, likes_counter: 0)

      it 'should save successfully' do
        @like = Like.create(post:, author: user)
        expect(@like).to be_valid
      end

      it 'No title should raise error' do
        @like = Like.create(post: nil, author: user)
        expect(@like).to_not be_valid
      end

      it 'No comments_counter should raise error' do
        @like = Like.create(post:, author: nil)
        expect(@like).to_not be_valid
      end
    end
  end
end
