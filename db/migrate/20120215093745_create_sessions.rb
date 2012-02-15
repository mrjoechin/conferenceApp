class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.integer :location_id
      t.integer :speaker_id
      t.integer :helper_id
      t.string :institution_id

      t.timestamps
    end
  end
end
