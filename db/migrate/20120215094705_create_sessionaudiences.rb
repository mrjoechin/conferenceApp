class CreateSessionaudiences < ActiveRecord::Migration
  def change
    create_table :sessionaudiences do |t|
      t.integer :session_id
      t.integer :audience_id

      t.timestamps
    end
  end
end
