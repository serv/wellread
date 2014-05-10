class AddDateMonthYearToLinks < ActiveRecord::Migration
  def change
    add_column :links, :p_date, :integer
    add_column :links, :p_month, :integer
    add_column :links, :p_year, :integer
  end
end
