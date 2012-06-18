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
      total += /\d{1,}.\d{1,}/.match(good)[0].to_f
    end
    total
  end
  
end