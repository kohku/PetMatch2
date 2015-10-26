class AddProfileImageToPets < ActiveRecord::Migration
  def change
    add_column :pets, :profile_image_id, :string
  end

  def down
    remove_column :pets, :profile_image_id
  end
end
