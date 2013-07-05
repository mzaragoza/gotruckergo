class Admins::PlansController < AdminController
  expose(:plans){ Plan.order("id DESC").scoped{} }
  expose(:plan)

  def create
    if plan.save
      flash[:notice] = t(:plan_was_successfully_created)
      redirect_to(admins_plans_path)
    else
      render :new
    end
  end

  def update
    if plan.save
      flash[:notice] = t(:plan_was_successfully_updated)
      redirect_to(admins_plans_path)
    else
      render :edit
    end
  end
end

