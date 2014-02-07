class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [
    :show,
    :edit,
    :show,
    :update,
    :destroy
  ]


  def index
    @users = User.search_and_order(params[:search], params[:page])
  end

  def edit; end

  def update
    new_params = user_params

    if current_user.id != @user.id
      @user.admin = new_params[:admin]=="0" ? false : true
      @user.locked = new_params[:locked]=="0" ? false : true
    end

    if @user.update_attributes new_params
      redirect_to admin_users_path, notice: "#{@user.username} updated."
    else
      render :edit
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to admin_users_path, notice: "#{@user.username} created."
    else
      render :new
    end
  end

  def destroy
    if @user.id == current_user.id
      flash[:alert] = 'Man kann sich nicht selbst loeschen'
      redirect_to admin_users_path
    else
      @user.destroy
      redirect_to admin_users_path, :notice => 'User wurde gelöscht'
    end
  end

  def new
    @user = User.new
  end


  private

  def set_user
    @user = User.find(params[:id])
  rescue
    flash[:alert] = "The user with an id of #{params[:id]} doesn't exist."
    redirect_to admin_users_path
  end

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      :admin,
      :locked
    )
  end

end
