class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product_id)
    found_item = items.find { |item| item.product_id == product_id }

    if found_item
      found_item.increment
    else
      @items << CartItem.new(product_id)
    end
  end

  def empty?
    items.empty?
  end
end
