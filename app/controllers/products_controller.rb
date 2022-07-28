class productscontroller < applicationcontroller

  def index
    @products = product.all.order(created_at: :desc)
  end

  def show
    @product = product.find params[:id]
  end

end
