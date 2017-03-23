class ChangeCommitteesCol < ActiveRecord::Migration
  
  def up
    change_column(:committees, :name, :string, :null => true)
  end
  
  def down
    change_column(:committees, :name, :string, :null => false)
  end
  
end
