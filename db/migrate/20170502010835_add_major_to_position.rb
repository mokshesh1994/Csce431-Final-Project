class AddMajorToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :major, :string
  end
end
