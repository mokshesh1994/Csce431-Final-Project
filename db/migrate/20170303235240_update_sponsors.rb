class UpdateSponsors < ActiveRecord::Migration
  def up
    rename_column(:sponsors, :type, :spn_type)
  end
  
  def down
    rename_column(:sponsors, :spn_type, :type)
  end  
end
