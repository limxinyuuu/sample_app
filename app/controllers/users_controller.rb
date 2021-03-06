class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
    #@microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to rsvp_path
    else
      render 'new'
    end
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  private
      def user_params
        params.require(:user).permit(:name, :email)
      end
end
