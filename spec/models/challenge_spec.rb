require 'spec_helper'

describe Challenge do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}
  let(:group) {Group.create(name: 'Team BOB')}
  let(:challenge) {group.challenges.create(name: 'PI Day Challenge', description: 'eat five pies', start_date: Date.new(2001,2,22), end_date: Date.new(1986,3,11))}

  describe 'initialize' do
    it 'has a name' do
      expect(challenge.name).to eq('PI Day Challenge');
    end

    it 'has a description' do
      expect(challenge.description).to eq('eat five pies');
    end

    it 'has a start date' do
      expect(challenge.start_date).to eq(Date.new(2001,2,22));
    end

    it 'has an end date' do
      expect(challenge.end_date).to eq(Date.new(1986,3,11));
    end

    it 'belongs to a group' do
      expect(challenge.group).to be(group)
    end

    it 'has participants' do
      challenge.participants << user
      expect(challenge.participants.length).to be(1)
    end
  end

  describe 'as_json' do
    it 'renders a json object that includes participations' do
      challenge_as_parsed_json = JSON.parse(challenge.to_json)
      expect(challenge_as_parsed_json.keys.include? "participations").to be true
    end
  end
end
