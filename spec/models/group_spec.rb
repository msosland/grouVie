require 'spec_helper'

describe Group do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}
  let(:group) {user.created_groups.create(name: 'Team BOB')}

  describe 'creation' do
    it 'has a name' do
      expect(group.name).to eq('Team BOB');
    end

    it 'has a creator' do
      expect(group.creator).to eq(User.find_by(username: 'bobjones'))
    end

  end

  describe 'as_json' do
    it 'renders a json object that includes challenges' do
      group_as_parsed_json = JSON.parse(group.to_json)
      expect(group_as_parsed_json.keys.include? "challenges").to be true
    end

  it 'renders a json object that includes comments' do
      group_as_parsed_json = JSON.parse(group.to_json)
      expect(group_as_parsed_json.keys.include? "comments").to be true
    end

  it 'renders a json object that includes members' do
      group_as_parsed_json = JSON.parse(group.to_json)
      expect(group_as_parsed_json.keys.include? "members").to be true
    end
  end
end
