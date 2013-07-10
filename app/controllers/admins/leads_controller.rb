class Admins::LeadsController < AdminController
  expose(:leads){ Lead.where("status != 'converted'").order("id DESC").scoped{} }
  expose(:lead)

  def create
    if lead.save
      flash[:notice] = t(:lead_was_successfully_created)
      redirect_to(admins_leads_path)
    else
      render :new
    end
  end

  def update
    if params[:lead][:status] == 'converted'
      lead.conversion_date = DateTime.now
    end
    if lead.save
      flash[:notice] = t(:lead_was_successfully_updated)
      redirect_to(admins_leads_path)
    else
      render :edit
    end
  end
end

