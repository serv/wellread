class RemoveSingleDateRelatedColumnsFromLinks < ActiveRecord::Migration
  def change
    remove_column :links, :p_date, :integer
    remove_column :links, :p_month, :integer
    remove_column :links, :p_year, :integer
  end
end
