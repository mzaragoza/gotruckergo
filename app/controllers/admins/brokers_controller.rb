class Admins::BrokersController < AdminController
  expose(:brokers){ Broker.order("id DESC").scoped{} }
  expose(:broker)

  def create
    if broker.save
      flash[:notice] = t(:broker_was_successfully_created)
      redirect_to(admins_brokers_path)
    else
      render :new
    end
  end

  def update
    if broker.save
      flash[:notice] = t(:broker_was_successfully_updated)
      redirect_to(admins_brokers_path)
    else
      render :edit
    end
  end
end
