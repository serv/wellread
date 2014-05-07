class Link < ActiveRecord::Base
  has_many :authorables
  has_many :authors, through: :authorables
  belongs_to :category
  belongs_to :user

  accepts_nested_attributes_for :authors
end
