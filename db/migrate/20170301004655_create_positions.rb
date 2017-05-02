class CreatePositions < ActiveRecord::Migration
  
  def up
    create_table :positions do |t|
      t.string "name", :null => false, :limit => 50 
      t.string "type", :null => false, :limit => 50        # Executive board / Executive council
      t.string "major", :null => false, :limit => 50 
      t.timestamps null: false
      t.attachment :image
    end
  end
  
  def down
    drop_table :positions
  end
end
