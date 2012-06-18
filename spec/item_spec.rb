require 'spec_helper'

describe Item do
  
  it 'item no tax' do
    @item = Item.new("1 book at 12.49")
    @item.value.should == 12.49
  end
  
end