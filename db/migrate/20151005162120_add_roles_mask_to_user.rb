class AddRolesMaskToUser < ActiveRecord::Migration
  def change
  	add_column :users, :roles_mask, :integer
  end

  def down
  	remove_column :users, :roles_mask
  end
end
