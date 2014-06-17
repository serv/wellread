class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def signup
    @user = User.new
  end

  def signup_user
  end

  private

    def user_params
      params.require(:user)
        .permit(:username,
                :email,
                :password,
                :password_confirmation)
    end
end
