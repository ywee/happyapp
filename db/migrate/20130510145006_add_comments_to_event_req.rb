class AddCommentsToEventReq < ActiveRecord::Migration
  def change
    add_column :event_reqs, :comment, :belongs_to
  end
end
