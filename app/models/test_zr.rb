class TestZR < Test
	# Für Zahlenreihen-Test
	def draw_items(first)
		itemset = Array.new
		if(first)  # Choose between A and H, also categories 3-7
			categories = content_items.map{|i| i.difficulty}.uniq
			random_cat = categories.sample	# Start with a random cat
			categories.length.times do 
				items_of_rand_cat = content_items.where(difficulty: random_cat)
				itemset = itemset + items_of_rand_cat
				if(random_cat < 7)
					random_cat += 1
				else
					random_cat = 3 # Start with cat 3, also group A
				end
			end
		else # second draw
			categories = [1,2]
			pool = [1,2]
			all_items = content_items # all items
			remaining = all_items - itemset
			all_items.length.times do
				if (pool.length == 0)
					pool = categories
				end
				i = remaining.sample
				count = 0
				while ( count < 100) & (!pool.include? i.shorthand)
					i = remaining.sample
					count = count + 1 
				end
				pool = pool - [i.shorthand]
				itemset = itemset + [i]
			end
		end		
		return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items.map{|i| i.id}]
	end
