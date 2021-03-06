require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
  	#Este bloque correrá antes que todo el resto
  	before do
  		@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
  	end

  	it "can be created" do
  		expect(@user).to be_valid
  	end

  	it "cannot be created without email" do
  		@user.email = nil
  		expect(@user).to_not be_valid
  	end
  end
end
