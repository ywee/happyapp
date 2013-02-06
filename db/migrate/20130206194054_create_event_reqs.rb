class CreateEventReqs < ActiveRecord::Migration
  def change
    create_table :event_reqs do |t|
      t.string :friend
      t.date :time

      t.timestamps
    end
  end
end
