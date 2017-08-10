require 'spec_helper'
require 'rails_helper'

feature 'user logs in' do
    let!(:user) { User.create(first_name: "Andrew", last_name: "Staleman", email: "andrew@gmail.com", password: "mypassword")}

    scenario 'user is greeted after signing in' do
      visit new_user_session_path

      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_button "Log in"

      expect(page).to have_content('Signed in successfully')
    end
  end
