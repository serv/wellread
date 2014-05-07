class AuthorsController < ApplicationController
  private

    def author_params
      params.require(:author).permit(:name)
    end
end
