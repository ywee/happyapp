require 'spec_helper'

describe Comment do
  it "requires a username" do 
    subject.should_not be_valid
	subject.user = "anything"
	subject.should be_valid
	end
end
