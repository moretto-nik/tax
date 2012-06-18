class Tax
  @@normal_tax_item = ["book","chocolate","pills"]
  
  def initialize(item)
    if item.match(/imported/) != nil
      @imported = true
    end
    
    @@normal_tax_item.each do |stax|
      if item.match(/#{stax}/) == nil
        @standard_tax = true
      end
    end
  end
  
  def imported?
    @imported
  end
  
  def standard_tax?
    @standard_tax
  end
  
  def taxes
    if imported?
      
    end
  end
  
end