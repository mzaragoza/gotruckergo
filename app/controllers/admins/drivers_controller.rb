class Admins::DriversController < AdminController
  expose(:drivers){ Driver.order("id DESC").scoped{} }
  expose(:driver)

  def create
    if driver.save
      flash[:notice] = t(:driver_was_successfully_created)
      redirect_to(admins_drivers_path)
    else
      render :new
    end
  end

  def update
    if driver.save
      flash[:notice] = t(:driver_was_successfully_updated)
      redirect_to(admins_drivers_path)
    else
      render :edit
    end
  end
end

