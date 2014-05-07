class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    if @link.save
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
    params.require(:link).permit(:title, :url)
  end
end
