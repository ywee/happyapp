class EventReq < ActiveRecord::Base
  attr_accessible :friend, :time
  
  scope :top, order('friend desc').limit(2)
end
