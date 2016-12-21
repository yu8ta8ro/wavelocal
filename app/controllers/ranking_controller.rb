class RankingController < ApplicationController
  layout 'ranking_layout'
  before_action :ranking
  # THIS WILL BE USED
  # def ranking
  #   @ranking = Usereet.group(:user_id).count().values
  # end
  # WILL BE USED

  def ranking
    @ranking = Usereet.order('id DESC').limit(3)
  end

end