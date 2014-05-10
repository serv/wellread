class Link < ActiveRecord::Base
  # attr_accessor :authors_hash,
  #               :categories_hash

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
  # validate :properties_author_name,
          #  :properties_category_name

  def carefully_save(link_params)
    begin
      self.save!
    rescue

      if !title.empty? && !url.empty?
        debugger
        copy = Link.new(title: title, url: url)
        copy.save(validate: false)

        errors.messages.each do |key, message|
          if key == :"authors.name" && message.include?("has already been taken")
            author_name = link_params['authors_attributes']['0']['name']
            author = Author.find_or_create_by(name: author_name)
            author_hash = { author_id: author.id, link_id: copy.id }
            authorable = Authorable.create(author_hash)
          elsif key == :"categories.name" && message.include?("has already been taken")
            category_name = link_params['categories_attributes']['0']['name']
            category = Category.find_or_create_by(name: category_name)
            category_hash = { category_id: category.id, link_id: copy.id }
            categorizeable = Categorizeable.create(category_hash)
          end
        end
        self.id = copy.id
        return copy
      else
        if title.empty?
          errors.add(:title, "can't be blank")
        elsif url.empty?
          errors.add(:url, "can't be blank")
        end
        false
      end
    end # end rescue
  end

end
