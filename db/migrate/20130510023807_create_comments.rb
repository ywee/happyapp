class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :body
      t.boolean :status
	  t.references :event_req

      t.timestamps
    end
	add_index :comments, :event_req
  end
end
