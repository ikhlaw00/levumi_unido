class TestZS < Test # This class will be used in zahlenstrahlen-Test, also in zahlenstrahen.seeds.rb
	def draw_items(first)
		itemset  = Array.new
		categories  = content_items.map {|x| x.difficulty}.uniq
		pool = categories
		all_items = content_items # all items
		all_items.length.times do
			remaining = all_items - itemset
			if (pool.length == 0)
				pool = categories
			end
			i = remaining.sample
			count = 0
			while ( count < 100) & (!pool.include? i.difficulty)
				i = remaining.sample
				count = count + 1 
			end
			pool = pool - [i.difficulty]
			itemset = itemset + [i]
		end
		return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items.map{|i| i.id}]
	end
end