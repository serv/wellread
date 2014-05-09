class Link < ActiveRecord::Base
  has_many :authorables
  has_many :authors, through: :authorables
  has_many :categorizeables
  has_many :categories, through: :categorizeables
  belongs_to :user

  accepts_nested_attributes_for :authors
  accepts_nested_attributes_for :categories
end
