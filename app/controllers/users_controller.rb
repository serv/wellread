class UsersController < ApplicationController
  def sign_up
    @user = User.new
  end

  def sign_up_user
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
