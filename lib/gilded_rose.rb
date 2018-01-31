class GildedRose

  MAXIMUM_QUALITY = 50
  MINIMUM_QUALITY = 0

  def initialize(items)
    @items = items
  end


def normal_item()
    @items.each do |item|
      if item.quality > 0
        if item.sell_in > 0
          item.quality -= 1
        else
          item.quality -=2
        end
        item.sell_in -= 1
      end
    end
  end

  def aged_brie()
    @items.each do |item|
        if item.name == "Aged Brie"
          if item.quality <50
            item.quality += 1
            item.sell_in -= 1
          else
            item.quality = 50
            item.sell_in -= 1
        end

    end
    end
  end

  def backstage_pass()
    @items.each do |item|
      if item.name == "Backstage passes to a TAFKAL80ETC concert"
        if item.sell_in.between?(6,10)
          item.quality += 2
        end
        if item.sell_in.between?(1,5)
          item.quality += 3
        end
        if item.sell_in <= 0
          item.quality = 0
        end
        item.sell_in -=1
      end


    end
  end

def sulfuras()
  @items.each do |item|
  if item.name == "Sulfuras"
  end
  end
end

#
# # ======= OLD CODE ======
#
#   def update_quality()
#     @items.each do |item|
#       if item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert"
#         if item.quality > MINIMUM_QUALITY
#           if item.name != "Sulfuras, Hand of Ragnaros"
#             item.quality = item.quality - 1
#           end
#         end
#       else
#         if item.quality < MAXIMUM_QUALITY
#           item.quality = item.quality + 1
#           if item.name == "Backstage passes to a TAFKAL80ETC concert"
#             if item.sell_in < 11
#               if item.quality < MAXIMUM_QUALITY
#                 item.quality = item.quality + 1
#               end
#             end
#             if item.sell_in < 6
#               if item.quality < MAXIMUM_QUALITY
#                 item.quality = item.quality + 1
#               end
#             end
#           end
#         end
#       end
#       if item.name != "Sulfuras, Hand of Ragnaros"
#         item.sell_in = item.sell_in - 1
#       end
#       if item.sell_in < MINIMUM_QUALITY
#         if item.name != "Aged Brie"
#           if item.name != "Backstage passes to a TAFKAL80ETC concert"
#             if item.quality > MINIMUM_QUALITY
#               if item.name != "Sulfuras, Hand of Ragnaros"
#                 item.quality = item.quality - 1
#               end
#             end
#           else
#             item.quality = item.quality - item.quality
#           end
#         else
#           if item.quality < MAXIMUM_QUALITY
#             item.quality = item.quality + 1
#           end
#         end
#       end
#     end
#   end
end
