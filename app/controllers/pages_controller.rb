class PagesController < ApplicationController
  def home
    @links = Link.all
  end
end
