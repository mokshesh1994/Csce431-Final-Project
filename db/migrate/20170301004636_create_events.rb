class CreateEvents < ActiveRecord::Migration
  
  def up
    create_table :events do |t|
      t.string "name", :null => false, :limit => 40
      t.string "link_to_event"
      t.binary "image"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :events
  end
end
