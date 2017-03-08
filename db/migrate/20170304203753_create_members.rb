class CreateMembers < ActiveRecord::Migration
  
  def up
    create_table :members do |t|
      t.integer "position_id"
      t.integer "division_id"
      t.string "name", :null => false, :limit => 50
      t.string "email", :null => false, :limit => 70
      t.string "password", :null => false, :limit => 50
      t.string "major", :null => false, :limit => 50
      t.integer "grad_year", :null => false, :limit => 50
      t.integer "member_since", :null => false, :limit => 50
      t.string "hometown", :null => false, :limit => 50
      t.text "pro_interests"
      t.binary "picture"
      t.timestamps null: false
    end
  end
  
   def down
    drop_table :members
  end
end
