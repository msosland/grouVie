require 'spec_helper'

describe Membership do
  let(:user) {User.create(email: 'bob@mail.com', username: 'bobjones', password: 'somethingsmart')}
  let(:group) {Group.create(name: 'Team BOB')}
  let(:membership) {Membership.create(group: group, user: user)}

  describe 'initialize' do
    it 'belongs to a group' do
      expect(membership.group).to be(group)
    end

    it 'belongs to a user' do
      expect(membership.user).to be(user)
    end
  end
end
