class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all.order("updated_at")
  end

  def show
    @profile = Profile.find_by(username: params[:id])
    @user = User.find(@profile.user_id)
    @posts = Post.select("id").where(user_id: @user.id)
  end
end
