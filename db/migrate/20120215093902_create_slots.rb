class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
