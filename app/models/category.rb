class Category < ActiveRecord::Base
  has_many :categorizeables
  has_many :links, through: :categorizeables

  validates :name, presence: true
  validates :name, length: { maximum: 140 }
  validates :name, uniqueness: true
  validates :name, format: {
    with: /\A[a-zA-Z\s]+\z/,
    message: "only allows letters" }

  def self.search_by_name(name)
    Category.where('name ~* ?', name)
  end
end
