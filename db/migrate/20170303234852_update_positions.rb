class UpdatePositions < ActiveRecord::Migration
  def up
    rename_column(:positions, :type, :pos_type)
  end
  
  def down
    rename_column(:positions, :pos_type, :type)
  end
end
