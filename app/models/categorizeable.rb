class Categorizeable < ActiveRecord::Base
  belongs_to :category
  belongs_to :link
end
