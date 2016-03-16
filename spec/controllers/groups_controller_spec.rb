require 'spec_helper'

describe GroupsController do
	before(:each) do
		@user = User.create!(email: 'mike@mail.com', username: 'mike', password: 'password')
		@group1 = Group.create!(name: "TeamGrouvie")
		@group1.members << @user
		@groups = User.find(@user.id).groups
	end

	describe "groups#index" do
		it "sets @groups to a users groups" do
			get :index, user_id: @user.id
			expect((assigns(:groups)).length).to be(1)
		end
	end

	describe "groups#show" do
		it "sets @group to an instance of Group" do
			get :show, id: @group1.id
			expect(assigns(:group)).to be_a(Group)
		end
	end
end