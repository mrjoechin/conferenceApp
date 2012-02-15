class CreateUserlevels < ActiveRecord::Migration
  def change
    create_table :userlevels do |t|
      t.string :desc

      t.timestamps
    end
  end
end
