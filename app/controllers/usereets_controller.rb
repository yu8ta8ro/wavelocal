class UsereetsController < ApplicationController

  def index
    @usereets = Usereet.order('id DESC')
    @usereet = Usereet.new
  end

  def new
  end

  def create
    Usereet.create(title: create_params[:title], pic: create_params[:pic], user_id: current_user.id)
    redirect_to action: :index
  end

  def edit
    @usereet = Usereet.find(params[:id])
  end

  def update
    @usereet = Usereet.find(params[:id])
    @usereet.update(title: create_params[:title], pic: create_params[:pic], user_id: current_user.id)
    redirect_to root_path
  end

  def show
  end

  def destroy
    usereet = Usereet.find(params[:id])
    usereet.destroy
    redirect_to render: index
  end

  private
  def create_params
    params.require(:usereet).permit(:title, :pic)
  end
end
