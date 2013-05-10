require 'spec_helper'

describe 'Adding an Event' do
	it 'requires a name' do
		visit '/event_reqs/new'
		click_link "Create New Event"
		click_button "Create Event"
		error_message = "Friend can't be blank"
		page.should have_content(error_message)
	end
end
