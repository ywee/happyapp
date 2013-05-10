class AddEventReqIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :event_req_id, :integer
  end
end
