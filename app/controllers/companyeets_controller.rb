class CompanyeetsController < ApplicationController

  def index
    @companyeets = Companyeet.all
    @companyeet = Companyeet.new
  end

  def create
    Companyeet.create(title: create_params[:title], pic: create_params[:pic], company_id: current_company.id)
    redirect_to action: :index
  end

  def edit
    @companyeet = Companyeet.find(params[:id])
  end

  def update
    @companyeet = Companyeet.find(params[:id])
    @companyeet.update(title: create_params[:title], pic: create_params[:pic], company_id: current_company.id)
    redirect_to root_path
  end

  def destroy
    companyeet = Companyeet.find(params[:id])
    companyeet.destroy
    redirect_to render: index
  end

  private
  def create_params
    params.require(:companyeet).permit(:title, :pic)
  end
end
