class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :image_path

      t.timestamps
    end
  end
end
