class Item
  
  def initialize(item)
    @item = item
  end
  
  def value
    /\d{1,}.\d{1,}/.match(@item)[0].to_f
  end
  
  def value_plus_tax
    
  end
  
end