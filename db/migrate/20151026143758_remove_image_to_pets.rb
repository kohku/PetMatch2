class RemoveImageToPets < ActiveRecord::Migration
  def change
  	remove_column :pets, :image
  end

  def down
  	add_column :pets, :image, :string
  end
end
