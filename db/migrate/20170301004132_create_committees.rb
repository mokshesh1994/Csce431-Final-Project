class CreateCommittees < ActiveRecord::Migration
  
  def up
    create_table :committees do |t|
      t.string "name", :null => false, :limit => 50
      t.text "description"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :committees
  end
  
end
