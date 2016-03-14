require 'spec_helper'

describe Comment do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}
  let(:group) {user.created_groups.create(name: 'Team BOB')}
  let(:comment) {Comment.create(group: group, user: user, content: 'hello, world!')}

  describe 'initialize' do
    it 'has content' do
      expect(comment.content).to eq('hello, world!');
    end

    it 'belongs to a group' do
      expect(comment.group).to be(group)
    end

    it 'belongs to a user' do
      expect(comment.user).to be(user)
    end
  end

  describe 'as_json' do
    it 'renders a json object that includes username' do
      comment_as_parsed_json = JSON.parse(comment.to_json)
      expect(comment_as_parsed_json.keys.include? "username").to be true
    end

    it 'renders a json object that includes the correct username' do
      comment_as_parsed_json = JSON.parse(comment.to_json)
      expect(comment_as_parsed_json["username"]).to eq("bobjones")
    end
  end
end
