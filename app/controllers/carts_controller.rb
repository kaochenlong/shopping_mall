class CartsController < ApplicationController
  def add
    cart = Cart.from_hash(session[:cart9487])
    cart.add_item(params[:id])
    session[:cart9487] = cart.serialize

    redirect_to products_path, notice: "已加入購物車"
  end
end
