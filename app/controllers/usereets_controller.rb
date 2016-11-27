class UsereetsController < ApplicationController

  def index
    @usereets = Usereet.order('id DESC').page(params[:page]).per(6)
  end

  def new
    @usereets = Usereet.new
  end

  def create
    Usereet.create(title: create_params[:title], explanation: create_params[:explanation], pic: create_params[:pic], , user_id: current_user.id)
    redirect_to action: :index
  end

  def edit
    @usereet = Usereet.find(params[:id])
  end

  def update
    usereet = Usereet.find(params[:id])
    usereet.update
    redirect_to render: index
  end

  private
  def create_params
    params.require(:baba).permit(:title, :concept, :image, :image_cache)
  end
end
