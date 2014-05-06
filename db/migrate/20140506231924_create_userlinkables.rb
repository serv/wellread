class CreateUserlinkables < ActiveRecord::Migration
  def change
    create_table :userlinkables do |t|
      t.integer :user_id
      t.integer :link_id

      t.timestamps
    end
  end
end
