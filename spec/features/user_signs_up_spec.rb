require 'spec_helper'
require 'rails_helper'

feature 'sign up' do

  scenario 'user sees all of the expected sign up fields' do
    visit root_path
    click_link 'Sign up'
    expect(page).to have_content('First Name')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Password confirmation')
  end

  scenario 'user specifies valid and required information' do
    visit root_path
    click_link 'Sign up'
    fill_in 'First Name', with: 'Jack'
    fill_in 'Last Name', with: 'Sparrow'
    fill_in 'Email', with: 'jacksparrow@gmail.com'
    fill_in 'Password', with: 'Mypassforjack'
    fill_in 'Password confirmation', with: 'Mypassforjack'
    click_button 'Create Account'

    expect(page).to have_content("You have signed up")
    expect(page).to have_content("Sign Out")

  end

  scenario 'required information is not supplied' do
    visit root_path
    click_link 'Sign up'
    click_button 'Create Account'

    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content("Sign Out")
  end
end
