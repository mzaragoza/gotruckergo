class Admins::ReceiptsController < AdminController
  expose(:receipts){ Receipt.order("id DESC").scoped{} }
  expose(:receipt)

  def create
    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_created)
      redirect_to(admins_receipts_path)
    else
      render :new
    end
  end

  def update
    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_updated)
      redirect_to(admins_receipts_path)
    else
      render :edit
    end
  end
end

