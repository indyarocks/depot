# Current cart
module CurrentCart
  private

  def set_cart
    @cart = Cart.find_by(id: session[:cart_id])
    return unless @cart.blank?

    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
