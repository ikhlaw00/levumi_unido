class TestSEL < Test
  # Fuer sinnentnehmendes Lesen SEL

  def draw_items(first)
    if first
      return super
    end
    itemset = Array.new
    pools = content_items.map{|i| i.difficulty}.uniq  # we need just the content items. Using items instead will cause an error.
    if(pools.include? 0)
      pools = pools - [0]
    end
    categories = pools
    content_items.length.times  do    # Don't use len to avoid items start and end items (itemtype > 0 or itemtype <0) 
      remaining = content_items - itemset
      i = remaining.sample
      if (categories.length == 0)
        categories = pools
      end
      count = 0
      while (count < 30) & (!categories.include? i.difficulty)
        i = remaining.sample
        count = count + 1
      end
      categories = categories - [i.difficulty]
      itemset = itemset + [i]
      print i.difficulty
    end
    return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items.map{|i| i.id}]
  end
end