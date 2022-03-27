class AddDefaultValueToUserRoleAttribute < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :role, :integer, default: 1
  end

  def down
    change_column :users, :role, :integer, default: nil
  end
end
