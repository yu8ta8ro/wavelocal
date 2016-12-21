class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @pic = user.avatar.url
    @usereets = user.usereets.page(params[:page]).per(5).order("created_at DESC")
  end
end
