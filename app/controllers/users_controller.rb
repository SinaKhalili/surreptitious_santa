class UsersController < Clearance::UsersController
  before_action :set_user, only: [:destroy, :show]
  before_action :require_login, only: [:my_account]

  def index
    @users = User.all
  end

  def show
  end

  def my_account
    @user = current_user
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def users_admin
    @users = User.all
  end

  private

  def user_params
    params[:user].permit(:email, :password, :bio)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_from_params
    User.new(user_params)
  end
end
