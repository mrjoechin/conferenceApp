class AddSlotIdToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :slot_id, :integer

  end
end
