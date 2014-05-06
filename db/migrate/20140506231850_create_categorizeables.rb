class CreateCategorizeables < ActiveRecord::Migration
  def change
    create_table :categorizeables do |t|
      t.integer :category_id
      t.integer :link_id

      t.timestamps
    end
  end
end
