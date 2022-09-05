class UsersController < ApplicationController
  # before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

   private

  def user_params
    params.require(:user).permit(:title, :body, photos: [])
  end

  #  def user_params
  #    params.require(:user).permit(:username, :description)
  #  end

  # def set_user
  #   @user = User.find(params[:id])
  # end
end
