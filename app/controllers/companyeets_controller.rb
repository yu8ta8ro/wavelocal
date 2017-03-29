class CompanyeetsController < RankingController

  def index
    @companyeets = Companyeet.includes(:company).order('id DESC').page(params[:page]).per(4)
    @companyeet = Companyeet.new
  end

  def show
    @companyeet = Companyeet.find(params[:id])
    companyeet = Companyeet.find(params[:id])
    if companyeet.like_user(current_user).present?
      flash[:success] = '既にLIKE!しています'
      redirect_to action: :index
    else
      @like = Like.find_by(company_id: current_company.id, companyeet_id: params[:id]) if company_signed_in?
    end
  end

  def create
    Companyeet.create(title: create_params[:title], pic: create_params[:pic], company_id: current_company.id)
    flash[:success] = '投稿しました'
    redirect_to action: :index
  end

  def edit
    @companyeet = Companyeet.find(params[:id])
  end

  def update
    @companyeet = Companyeet.find(params[:id])
    @companyeet.update(title: create_params[:title], pic: create_params[:pic], company_id: current_company.id)
    flash[:success] = '編集しました'
    redirect_to action: :index
  end

  def destroy
    companyeet = Companyeet.find(params[:id])
    companyeet.destroy
    flash[:success] = '削除しました'
    redirect_to  action: :index
  end

  private
  def create_params
    params.require(:companyeet).permit(:title, :pic)
  end
end
