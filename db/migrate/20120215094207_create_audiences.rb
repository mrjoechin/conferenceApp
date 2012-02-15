class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.string :desc

      t.timestamps
    end
  end
end
