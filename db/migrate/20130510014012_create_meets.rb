class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :name
      t.text :minutes
      t.date :day

      t.timestamps
    end
  end
end
