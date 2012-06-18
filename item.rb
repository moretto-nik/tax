class Item
  @@normal_tax_item = ["book","chocolate","pills"]
  
  def initialize(item)
    @item = item
    if item.match(/imported/) != nil
      @imported = true
    end
    
    @@normal_tax_item.each do |stax|
      if item.match(/#{stax}/) == nil
        @standard_tax = true
      end
    end
  end
  
  def value
    /\d{1,}.\d{1,}/.match(@item)[0].to_f
  end
  
  def value_plus_tax
    
  end
  
  def imported?
    @imported
  end
  
  def standard_tax?
    @standard_tax
  end
  
end