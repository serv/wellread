class AddStrPublicationDateToLinks < ActiveRecord::Migration
  def change
    add_column :links, :str_publication_date, :string
  end
end
