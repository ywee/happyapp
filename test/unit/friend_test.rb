require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "name presence" do
	friend = Friend.new
	assert !friend.save, "Shouldn't save without a name"
	end

end
