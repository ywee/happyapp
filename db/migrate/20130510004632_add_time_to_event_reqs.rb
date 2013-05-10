class AddTimeToEventReqs < ActiveRecord::Migration
  def change
    add_column :event_reqs, :when, :time
  end
end
