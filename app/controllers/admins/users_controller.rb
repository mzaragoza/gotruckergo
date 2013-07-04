class Admins::UsersController < AdminController
  expose(:users){ User.order("id DESC").scoped{} }
  expose(:user)

  def create
    if user.save
      flash[:notice] = t(:user_was_successfully_created)
      redirect_to(admins_users_path)
    else
      render :new
    end
  end

  def update
    if user.save
      flash[:notice] = t(:user_was_successfully_updated)
      redirect_to(users_drivers_path)
    else
      render :edit
    end
  end
end

