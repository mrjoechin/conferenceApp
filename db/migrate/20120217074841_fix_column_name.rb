class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :slots, :end, :finish
  end

  def down
    rename_column :slots, :finish, :end
  end
end
