class CreateSessionproducts < ActiveRecord::Migration
  def change
    create_table :sessionproducts do |t|
      t.integer :session_id
      t.integer :product_id

      t.timestamps
    end
  end
end
