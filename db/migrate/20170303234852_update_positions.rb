class UpdatePositions < ActiveRecord::Migration
  def up
    rename_column(:positions, :type, :major, :pos_type)
  end
  
  def down
    rename_column(:positions, :pos_type, :major, :type)
  end
end
