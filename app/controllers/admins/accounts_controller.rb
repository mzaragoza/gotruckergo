class Admins::AccountsController < AdminController
  expose(:accounts){ Account.order("id DESC").scoped{} }
  expose(:account)

  def create
    if account.save
      flash[:notice] = t(:account_was_successfully_created)
      redirect_to(admins_accounts_path)
    else
      render :new
    end
  end

  def update
    if account.save
      flash[:notice] = t(:account_was_successfully_updated)
      redirect_to(admins_accounts_path)
    else
      render :edit
    end
  end
end

