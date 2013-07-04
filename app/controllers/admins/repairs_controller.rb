class Admins::RepairsController < AdminController
  expose(:repairs){ Repair.order("id DESC").scoped{} }
  expose(:repair)

  def create
    if repair.save
      flash[:notice] = t(:repair_was_successfully_created)
      redirect_to(admins_repairs_path)
    else
      render :new
    end
  end

  def update
    if repair.save
      flash[:notice] = t(:repair_was_successfully_updated)
      redirect_to(admins_repairs_path)
    else
      render :edit
    end
  end
end

