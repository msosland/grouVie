require 'spec_helper'

describe ChallengesController do
	before(:each) do
		@group = Group.create!(name: "TeamGrouvie")
		@user = User.create!(email: 'mike@mail.com', username: 'mike', password: 'password')
		@challenge = Challenge.create!(name: "Clean the fridge", description: "well")
		@challenge.participants << @user
	end

	describe "challenge#create" do
		# hard time testing routes that have a JSON parser first
	end

	describe "challenge#show" do
		it "sets @challenge to an instance of Challenge" do
			get :show, id: @challenge.id
			expect(assigns(:challenge)).to be_a(Challenge)
		end
	end
end