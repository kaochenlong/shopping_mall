class CartItem
  attr_reader :product_id, :quantity

  def initialize(product_id, quantity = 1)
    @product_id = product_id
    @quantity = quantity
  end

  def increment(n = 1)
    @quantity += n
  end

  def product
    Product.find_by(id: product_id)
  end

  def price
    product.price * quantity
  end
end
