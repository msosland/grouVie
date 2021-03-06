require 'spec_helper'

describe Participation do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}
  let(:challenge) {Challenge.create(name: 'Finish final project', description: 'finish that thing by Friday')}
  let(:participation) {Participation.create(user: user, challenge: challenge)}

  describe 'creation' do
    it 'has an initial completed status of false' do
      expect(participation.completed).to be(false);
    end

     it 'has an image' do
      expect(participation.image).to_not be nil;
    end
  end

  describe 'as_json' do
    it 'renders a json object that includes image URL' do
      participation_as_parsed_json = JSON.parse(participation.to_json)
      expect(participation_as_parsed_json.keys.include? "image_url").to be true
    end

    it 'renders a json object that includes username' do
        participation_as_parsed_json = JSON.parse(participation.to_json)
        expect(participation_as_parsed_json.keys.include? "username").to be true
      end

    it 'renders a json object that includes the correct username' do
      participation_as_parsed_json = JSON.parse(participation.to_json)
      expect(participation_as_parsed_json["username"]).to eq("bobjones")
    end
  end
end
