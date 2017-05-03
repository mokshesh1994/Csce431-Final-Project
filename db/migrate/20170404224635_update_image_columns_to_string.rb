class UpdateImageColumnsToString < ActiveRecord::Migration

  def up
    change_column(:divisions, :image, :string)
    change_column(:events, :image, :string)
    change_column(:members, :picture, :string)
    change_column(:sponsors, :image, :string) #here is where i changed logo to image
  end
  
  def down
    change_column(:divisions, :image, :binary)
    change_column(:events, :image, :binary)
    change_column(:members, :picture, :binary)
    change_column(:sponsors, :image, :binary) #here is where i changed logo to image
  end

end
