require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context 'Presense of fields' do
      it 'should save successfully' do
        @user = User.new(name: 'John', photo: '', bio: 'I am John', posts_counter: 0)
        expect(@user).to be_valid
      end

      it 'No name should raise error' do
        @user = User.new(name: nil, photo: '', bio: 'I am John', posts_counter: 0)
        expect(@user).to_not be_valid
      end

      it 'No post_counter should raise error' do
        @user = User.new(name: 'John', photo: '', bio: 'I am John', posts_counter: nil)
        expect(@user).to_not be_valid
      end
    end
  end
end
