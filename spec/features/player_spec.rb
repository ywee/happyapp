require 'spec_helper'

describe 'Adding a friend' do
	it 'requires a name' do
		visit friends_path
		click_link "New Friend"
		click_button "Create Friend"
		error_message = "Name can't be blank"
		page.should have_content(error_message)
	end
end