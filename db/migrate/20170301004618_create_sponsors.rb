class CreateSponsors < ActiveRecord::Migration
  
  def up
    create_table :sponsors do |t|
      t.string "name", :null => false, :limit => 40
      t.text "description"
      t.string "type", :null => false, :limit => 40
      t.binary "logo"
      t.string "link_to_sec"
      t.string "link_to_sponsor"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :sponsors
  end
end
