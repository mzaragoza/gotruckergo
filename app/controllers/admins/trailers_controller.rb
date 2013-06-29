class Admins::TrailersController < AdminController
  expose(:trailers){ Trailer.order("id DESC").scoped{} }
  expose(:trailer)

  def create
    if trailer.save
      flash[:notice] = t(:trailer_was_successfully_created)
      redirect_to(admins_trailers_path)
    else
      render :new
    end
  end

  def update
    if trailer.save
      flash[:notice] = t(:trailer_was_successfully_updated)
      redirect_to(admins_trailers_path)
    else
      render :edit
    end
  end
end


