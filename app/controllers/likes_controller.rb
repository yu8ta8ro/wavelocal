class LikesController < ApplicationController

  def create
    if user_signed_in?
      @like = Like.create(user_id: current_user.id, companyeet_id: params[:companyeet_id])
      @likes = Like.where(companyeet_id: params[:companyeet_id])
      flash[:success] = 'ご利用ありがとうございます'
      redirect_to companyeets_path
    elsif company_signed_in?
      @like = Like.create(company_id: current_company.id, companyeet_id: params[:companyeet_id])
      @likes = Like.where(companyeet_id: params[:companyeet_id])
      flash[:success] = 'ご利用ありがとうございます'
      redirect_to companyeets_path
    end
  end

end
