class Link < ActiveRecord::Base
  has_many :authorables
  has_many :authors, through: :authorables
  has_many :categorizeables
  has_many :categories, through: :categorizeables
  belongs_to :user

  accepts_nested_attributes_for :authors
  accepts_nested_attributes_for :categories

  validates :title, presence: true
  validates :title, length: { maximum: 140 }
  validates :url, presence: true
  validates :url, length: { maximum: 2083 }
  validates :url, uniqueness: true
end
