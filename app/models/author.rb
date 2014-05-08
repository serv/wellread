class Author < ActiveRecord::Base
  has_many :authorables
  has_many :links, through: :authorables

  def self.search_by_name(name)
    Author.where('name ~* ?', name)
  end
end
