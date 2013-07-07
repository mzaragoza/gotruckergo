class Users::AccountsController < UserController
  expose(:account) {current_account}

  def create
    if account.save
      flash[:notice] = t(:account_was_successfully_created)
      redirect_to(users_account_path(current_account))
    else
      render :new
    end
  end

  def update
    if account.save
      flash[:notice] = t(:account_was_successfully_updated)
      redirect_to(users_account_path(current_account))
    else
      render :edit
    end
  end
end

