class Authorable < ActiveRecord::Base
  belongs_to :author
  belongs_to :link
end
