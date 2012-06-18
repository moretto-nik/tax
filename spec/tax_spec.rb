require 'spec_helper'

describe Tax do
  
  it 'no taxes' do
    @tax = Tax.new("1 bottle of perfume at 18.99")
    @tax.taxes.should == 0
  end
  
  it 'tax imported' do
    @tax = Tax.new("1 imported box of chocolates at 10.00")
    @tax.should be_imported
  end
  
  describe 'tax with normal tax' do
    before :each do
      @tax = Tax.new("1 bottle of perfume at 18.99")
    end
    
    it 'flag' do
      @tax.should be_standard_tax
    end
  end
  
end