class Comment < ActiveRecord::Base
  attr_accessible :user, :body
  belongs_to :event_req
  
  validates :user, :presence => true

end
