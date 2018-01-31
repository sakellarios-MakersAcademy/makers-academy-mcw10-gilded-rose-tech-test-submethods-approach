class GildedRose
  MAXIMUM_QUALITY = 50
  MINIMUM_QUALITY = 0

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when 'Aged Brie' then aged_brie(item)
      when 'Backstage passes to a TAFKAL80ETC concert' then backstage_pass(item)
      when 'Sulfuras, Hand of Ragnaros' then sulfuras(item)
      else
        normal_item(item)
      end
    end
  end

private

  def normal_item(item)
    if item.quality > MINIMUM_QUALITY
      item.quality -= item.sell_in > 0 ? 1 : 2
      item.sell_in -= 1
    end
  end

  def aged_brie(item)
    if item.quality < MAXIMUM_QUALITY
      item.quality += 1
    else
      item.quality = MAXIMUM_QUALITY
    end
    item.sell_in -= 1
  end

  def backstage_pass(item)
    item.quality += 2 if item.sell_in.between?(6, 10)
    item.quality += 3 if item.sell_in.between?(1, 5)
    item.quality = MINIMUM_QUALITY if item.sell_in <= MINIMUM_QUALITY
    item.sell_in -= 1
  end

  def sulfuras(item); end
end
