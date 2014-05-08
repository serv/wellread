module Api
  module V0
    class AuthorsController < ApplicationController
      def search_by_name
        author_name = params[:authorName]
        @authors = Author.search_by_name(author_name)
        render json: @authors
      end
    end
  end
end
