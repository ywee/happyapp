class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :minutes
      t.date :day
      t.time :when
      t.boolean :status

      t.timestamps
    end
  end
end
