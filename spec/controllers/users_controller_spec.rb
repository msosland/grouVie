require 'spec_helper'

describe UsersController do
	let(:user) {User.create!(email: 'mike@mail.com', username: 'mike', password: 'password')}

	describe 'user#index' do
		it 'creates a new instance of User' do
			get :index
			expect(assigns(:user)).to be_a(User)
		end
	end

	describe 'user#create' do
		context "correct user format" do

			it 'assigns a user to the correct user' do
				post :create, { email: "james@mail.com", username: "james", password: "password" }
				expect(assigns(:user)).to be_a(User)
			end

			it "returns a status of 200" do
				post :create, { email: "james@mail.com", username: "james", password: "password" }
				expect(response.response_code).to eq(200)
			end

			it 'renders the user as json if the user saves' do
				post :create, { email: "james@mail.com", username: "james", password: "password" }
				parsed_response = JSON.parse(user.to_json)
				expect(parsed_response["email"]).to eq("mike@mail.com")
			end
		end

		context "incorrect user format" do
			it "returns a status of 412" do
				post :create, { email: "", username: "", password: "1234"}
				expect(response.response_code).to eq(412)
			end
		end
	end

	describe 'user#show' do
		it 'assigns user as the correct instance of User' do
			get :show, id: user.id
			expect(assigns(:user)).to be_a(User)
		end
	end

	describe 'user#update' do
		# Test base64 parse and returning user.
	end
end