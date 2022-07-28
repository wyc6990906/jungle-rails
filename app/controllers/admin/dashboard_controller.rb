class Admin::DashboardController < ApplicationController
  def show
    @total_num_products = Product.count
    @total_categories = Category.count
  end
end
