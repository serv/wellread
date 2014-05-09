class Category < ActiveRecord::Base
  has_many :categorizeables
  has_many :links, through: :categorizeables

  def self.search_by_name(name)
    Category.where('name ~* ?', name)
  end
end
