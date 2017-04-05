class AddImageToCommittees < ActiveRecord::Migration
  
  def up
    add_column "committees", "image", :string
  end
  
  def down
    remove_column "committees", "image"
  end
end
