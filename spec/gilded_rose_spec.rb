require 'gilded_rose'
require 'item'

describe GildedRose do

  describe '#update_quality' do

    context 'normal items' do

      # it 'does not change the name' do
      #   items = [Item.new('foo', 0, 0)]
      #   GildedRose.new(items).update_quality
      #   expect(items[0].name).to eq('foo')
      # end

# DONE
      it 'decreases quality of normal items by 1 each day' do
        items = [Item.new('foo', 1, 1)]
        GildedRose.new(items).normal_item()
        expect(items[0].quality).to eq(0)
      end

# DONE
      it "does not decrease quality of normal items past 0" do
        items = [Item.new("foo", 1, 0)]
        GildedRose.new(items).normal_item()
        expect(items[0].quality).to eq(0)
      end

# DONE
      it "decreases quality of normal twice as fast once sell by date has passed" do
        items = [Item.new("foo", 0, 2)]
        GildedRose.new(items).normal_item()
        expect(items[0].quality).to eq(0)
      end

# DONE
      it "decreases the sell in date by 1 for normal items" do
        items = [Item.new("foo", 1, 1)]
        GildedRose.new(items).normal_item()
        expect(items[0].sell_in).to eq(0)
      end
    end

    context "Aged Brie" do
# DONE
      it "increases quality of 'Aged Brie' by 1 each day" do
        items = [Item.new("Aged Brie", 1, 1)]
        GildedRose.new(items).aged_brie()
        expect(items[0].quality).to eq(2)
      end

# DONE
      it "does not increase quality of 'Aged Brie' past 50" do
        items = [Item.new("Aged Brie", 1, 50)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq(50)
      end

# DONE
      it "decreases sell in date by 1 of 'Aged Brie'" do
        items = [Item.new("Aged Brie", 1, 50)]
        GildedRose.new(items).aged_brie()
        expect(items[0].sell_in).to eq(0)
      end
    end

    context "Backstage Pass" do

# DONE
      it "increases quality of backstage pass by 2 once sell by date within 10 days" do
        items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 10)]
        GildedRose.new(items).backstage_pass()
        expect(items[0].quality).to eq(12)
      end

# DONE
      it "increases qualilty of backstage pass by 3 once sell by date within 5 days" do
        items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 5)]
        GildedRose.new(items).backstage_pass()
        expect(items[0].quality).to eq(8)
      end

# DONE
      it "changes quality of backstage pass to 0 once sell by date is 0" do
        items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 5)]
        GildedRose.new(items).backstage_pass()
        expect(items[0].quality).to eq(0)
      end

# DONE
      it "decreases sell in date by 1 of backstage pass" do
        items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 5)]
        GildedRose.new(items).backstage_pass()
        expect(items[0].sell_in).to eq(4)
      end
    end

    context "Sulfuras" do

# NOT DONE
      it "does not change the quality of 'Sulfuras'" do
        items = [Item.new("Sulfuras, Hand of Ragnaros", 5, 5)]
        GildedRose.new(items).sulfuras()
        expect(items[0].quality).to eq(5)
      end

# NOT DONE
      it "does not change the sell in date of 'Sulfuras'" do
        items = [Item.new("Sulfuras, Hand of Ragnaros", 5, 5)]
        GildedRose.new(items).sulfuras()
        expect(items[0].sell_in).to eq(5)
      end
    end

    end

  end
