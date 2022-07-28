class Admin::DashboardController < ApplicationController
 http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD']
  def show
    @total_num_products = Product.count
    @total_categories = Category.count
  end
end
