class AddPublicationDateToLinks < ActiveRecord::Migration
  def change
    add_column :links, :publication_date, :datetime
  end
end
