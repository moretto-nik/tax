class Goods
  
  def initialize(items)
    @items = items
  end
  
  def sales_taxes
    if @items.length == 0
      0
    end
  end
  
  def total
    total = 0
    @items.each do |good|
      total += good.value
    end
    total
  end
  
end