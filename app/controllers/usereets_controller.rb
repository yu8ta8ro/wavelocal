class UsereetsController < RankingController

  def index
    @usereets = Usereet.includes(:user).order('id DESC').page(params[:page]).per(4)
    @usereet = Usereet.new
  end

  def show
    @usereet = Usereet.find(params[:id])
    usereet = Usereet.find(params[:id])
    if usereet.like_user(current_user).present?
      @usereets = Usereet.order('id DESC')
      flash[:success] = '既にLIKE!しています'
      redirect_to action: :index
    else
      @like = Like.find_by(user_id: current_user.id, usereet_id: params[:id]) if user_signed_in?
    end
  end

  def new
  end

  def create
    Usereet.create(title: create_params[:title], pic: create_params[:pic], user_id: current_user.id)
    flash[:success] = '投稿しました'
    redirect_to action: :index
  end

  def edit
    @usereet = Usereet.find(params[:id])
  end

  def update
    @usereet = Usereet.find(params[:id])
    @usereet.update(title: create_params[:title], pic: create_params[:pic], user_id: current_user.id)
    flash[:success] = '編集しました'
    redirect_to action: :index
  end


  def destroy
    usereet = Usereet.find(params[:id])
    usereet.destroy
    flash[:success] = '削除しました'
    redirect_to  action: :index
  end

  private
  def create_params
    params.require(:usereet).permit(:title, :pic)
  end
end
