require 'spec_helper'

describe User do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}

  describe 'initialize' do
    it 'has a username' do
      expect(user.username).to eq('bobjones');
    end

    it 'has an email' do
      expect(user.email).to eq('bob@mail.com')
    end

    it 'generates a password digest when a user is initialized' do
      expect(user.password_digest).to_not eq(nil)
    end
  end

  describe 'as_json' do
    it 'renders a json object that includes memberships' do
      user_as_parsed_json = JSON.parse(user.to_json)
      expect(user_as_parsed_json.keys.include? "memberships").to be true
    end

  it 'renders a json object that includes image URL' do
      user_as_parsed_json = JSON.parse(user.to_json)
      expect(user_as_parsed_json.keys.include? "image_url").to be true
    end
  end
end
