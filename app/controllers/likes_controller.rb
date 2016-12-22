class LikesController < ApplicationController
  before_action :usereet_id, only: [:create, :destroy]

  def create
    if user_signed_in?
      @like = Like.create(user_id: current_user.id, usereet_id: params[:usereet_id])
      @likes = Like.where(usereet_id: params[:usereet_id])
      flash[:success] = 'LIKE!しました'
      redirect_to usereets_path
    elsif company_signed_in?
      @like = Like.create(company_id: current_company.id, usereet_id: params[:usereet_id])
      @likes = Like.where(usereet_id: params[:usereet_id])
      flash[:success] = 'LIKE!しました'
      redirect_to usereets_path
    end
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, usereet_id: params[:usereet_id])
    like.destroy
    @likes = Like.where(usereet_id: params[:usereet_id])
  end

  private
  def usereet_id
    @usereet = Usereet.find(params[:usereet_id])
  end
end
