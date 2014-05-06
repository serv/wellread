class Author < ActiveRecord::Base
  has_many :authorables
  has_many :links, through: :authorables
end
