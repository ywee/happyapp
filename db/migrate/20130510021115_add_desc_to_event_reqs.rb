class AddDescToEventReqs < ActiveRecord::Migration
  def change
    add_column :event_reqs, :description, :text
  end
end
