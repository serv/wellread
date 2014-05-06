class Category < ActiveRecord::Base
  has_many :categorizeables
  has_many :links, through: :categorizeables
end
