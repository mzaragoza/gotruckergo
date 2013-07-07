class Users::UsersController < UserController
  before_filter :check_password_submitted, :only => :update
  expose(:users){ current_account.users.order("id DESC").scoped{} }
  expose(:user)

  def create
    if current_account.users.count < current_account.subscription.licenses
      if user.save
        flash[:notice] = t(:user_was_successfully_created)
        redirect_to(users_users_path)
      else
        render :new
      end
    else
      flash[:notice] = t(:excited_licenses)
      redirect_to(users_users_path)
    end
  end

  def update
    if user.save
      flash[:notice] = t(:user_was_successfully_updated)
      redirect_to(users_users_path)
    else
      render :edit
    end
  end

  private
  def check_password_submitted
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      user.updating_password = false
    else
      user.updating_password = true
    end
  end
end

