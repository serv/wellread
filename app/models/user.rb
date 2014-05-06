class User < ActiveRecord::Base
  has_many :userlinkables
  has_many :links, through: :userlinkables
end
