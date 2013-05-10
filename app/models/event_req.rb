class EventReq < ActiveRecord::Base
  attr_accessible :friend, :time, :when, :description
  has_many :comments
  
  validates :friend, :presence => true

  scope :top, order('time')
end
