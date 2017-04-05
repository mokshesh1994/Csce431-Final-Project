class UpdateImageColumnsToString < ActiveRecord::Migration

  def up
    change_column(:divisions, :image, :string)
    change_column(:events, :image, :string)
    change_column(:members, :picture, :string)
    change_column(:sponsors, :logo, :string)
  end
  
  def down
    change_column(:divisions, :image, :binary)
    change_column(:events, :image, :binary)
    change_column(:members, :picture, :binary)
    change_column(:sponsors, :logo, :binary)
  end

end
