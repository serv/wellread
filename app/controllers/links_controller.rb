class LinksController < ApplicationController
  def new
    @link = Link.new
    @author = @link.authors.build
    @category = @link.categories.build
  end

  def create
    @link = Link.new(link_params)
    if @link.carefully_save(link_params)
      redirect_to more_info_link_path(@link)
    else
      render 'new'
    end
  end

  def more_info
    @link = Link.find(params[:id])
  end

  private

    def link_params
      params.require(:link)
        .permit(
          :title,
          :url,
          authors_attributes: [:name],
          categories_attributes: [:name]
        )
    end
end
