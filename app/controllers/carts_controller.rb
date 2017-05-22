class CartsController < ApplicationController
  def add
    current_cart.add_item(params[:id])
    session[:cart9487] = current_cart.serialize

    redirect_to products_path, notice: "已加入購物車"
  end

  def destroy
    session[:cart9487] = nil
    redirect_to products_path, notice: "購物車已清空"
  end
end
