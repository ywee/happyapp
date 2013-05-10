require 'spec_helper'

describe 'Adding an Event' do
	it 'requires a name', :js => true do
		visit '/event_reqs/new'
		click_button "Create Event"
		error_message = "Friend can't be blank"
		page.should have_content(error_message)
	end
end
