class CreateDivisions < ActiveRecord::Migration
  
  def up
    create_table :divisions do |t|
      t.string "name", :null => false, :limit => 30
      t.text "description"
      t.binary "image"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :divisions
  end
end
