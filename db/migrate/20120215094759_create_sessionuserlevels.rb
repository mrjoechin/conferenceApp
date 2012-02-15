class CreateSessionuserlevels < ActiveRecord::Migration
  def change
    create_table :sessionuserlevels do |t|
      t.integer :session_id
      t.integer :userlevel_id

      t.timestamps
    end
  end
end
