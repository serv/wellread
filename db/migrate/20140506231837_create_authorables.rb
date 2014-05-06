class CreateAuthorables < ActiveRecord::Migration
  def change
    create_table :authorables do |t|
      t.integer :link_id
      t.integer :author_id
      
      t.timestamps
    end
  end
end
