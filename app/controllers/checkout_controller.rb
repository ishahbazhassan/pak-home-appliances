class CheckoutController < ApplicationController
  def show; end

  def create
    redirect_to checkout_path, notice: "Order request received. A PAK representative will confirm availability and shipping."
  end
end
