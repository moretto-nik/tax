require 'spec_helper'

describe Item do
  
  it 'item no tax' do
    @item = Item.new("1 book at 12.49")
    @item.value.should == 12.49
  end
  
  it 'item imported' do
    @item = Item.new("1 imported box of chocolates at 10.00")
    @item.should be_imported
  end
  
  describe 'item with normal tax' do
    before :each do
      @item = Item.new("1 bottle of perfume at 18.99")
    end
    
    it 'flag' do
      @item.should be_standard_tax
    end
  end
  
end