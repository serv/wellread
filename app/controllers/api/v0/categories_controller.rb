module Api
  module V0
    class CategoriesController < ApplicationController
      def search_by_name
        category_name = params[:categoryName]
        @categories = Category.search_by_name(category_name)
        render json: @categories
      end
    end
  end
end
