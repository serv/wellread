module LinksHelper
  def pulication_year(str)
    str.split('/').last
  end
end
