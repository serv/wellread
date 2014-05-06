class Link < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  belongs_to :user
end
