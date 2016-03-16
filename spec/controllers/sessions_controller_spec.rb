require 'spec_helper'

describe SessionsController do
	let!(:user) { User.create!(email: "jim@mail.com", username: "jimo", password: "password") }

	def create_session
		post :create, { username: user.username, password: user.password }
	end

	describe "sessions#create" do
		it "assigns @user to the appropriate user" do
			create_session
			expect(assigns(:user).username).to eq("jimo")
		end

		it "logs in the user if the parameters are valid" do
			create_session
			expect(assigns(session[:user_id])).to eq(assigns(user.id))
		end

		it 'renders the user as json if the user logs in' do
				create_session
				parsed_response = JSON.parse(user.to_json)
				expect(parsed_response["email"]).to eq("jim@mail.com")
			end
	end

	describe "GET #logout" do
		it "removes the session user_id" do
			# failing, why? no view?
			get :logout
			expect(session[:user_id]).to be(nil)
		end
	end
end