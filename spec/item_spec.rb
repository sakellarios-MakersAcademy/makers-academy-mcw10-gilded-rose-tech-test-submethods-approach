require 'item'

describe Item do
  context '#initialize' do
    it 'gives a name' do
      item = Item.new('foo', 0, 0)
      expect(item.name).to eq('foo')
    end
    it 'sets a \'sell in\' attribute' do
      item = Item.new('foo', 0, 0)
      expect(item.sell_in).to eq(0)
    end
    it 'sets a quality attribute' do
      item = Item.new('foo', 0, 0)
      expect(item.quality).to eq(0)
    end
  end


context "#to_s convert item into a string" do
    it 'prints to string' do
      item = Item.new('foo', 1, 1)
      expect(item.to_s).to eq("foo, 1, 1")
    end
  end
end
