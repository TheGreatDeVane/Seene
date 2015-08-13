require 'rails_helper.rb'

feature 'create events' do 
	scenario 'can create job' do 
		visit 'dashboard'
		click_link 'Create Event'
		fill_in 'Title', with: 'title'
		fill_in 'Description', with: 'description'
		click_button 'Create Event'
		expect(page).to have_content('title')
		expect(page).to have_content('description')
	end
end