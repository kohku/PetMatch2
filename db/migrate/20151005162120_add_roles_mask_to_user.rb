class AddRolesMaskToUser < ActiveRecord::Migration
  def change
  	add_column :users, :roles_mask, :integer
  end

  def down
  	remove_colum :users, :roles_mask
  end
end
