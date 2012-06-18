require 'spec_helper'

describe Goods do
  
  it 'goods without items' do
    @goods = Goods.new([])
    @goods.sales_taxes.should == 0
    @goods.total.should == 0
  end
  
  it 'goods without tax and one good' do
    @goods = Goods.new([Item.new("1 book at 12.49")])
    @goods.total.should == 12.49
  end
  
  it 'goods without tax and more goods' do
    @goods = Goods.new([Item.new("1 book at 12.49"), Item.new("1 chocolate bar at 0.85")])
    @goods.total.should == 12.49 + 0.85
  end
  
end