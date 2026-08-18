class ShopController < ApplicationController
  def index
    @category = Catalog.category(params[:category])
    @products = Catalog.products(category: params[:category], query: params[:q])
  end

  def show
    @product = Catalog.product(params[:slug])
    return redirect_to shop_path, alert: "Product not found." unless @product

    @related = Catalog.related(@product)
  end
end
