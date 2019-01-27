class TestRater < Test # This class will be used in zahlenstrahen.seeds.rb, addition und zahlzerlegung
	def draw_items(first)
		itemset  = Array.new
		categories  = content_items.map {|x| x.difficulty}.uniq
		pool = categories 
		if level.include? 'M'
			pool += [1,1,1]
		end
		all_items = content_items # all items
		all_items.length.times do
			remaining = all_items - itemset
			if (pool.length == 0)
				pool = categories
				if level.include? 'M'
					pool += [1,1,1]
				end
			end
			i = remaining.sample
			count = 0
			while ( count < 100) & (!pool.include? i.difficulty)
				i = remaining.sample
				count = count + 1 
			end
			#pool = pool - [i.difficulty]
			#pool.slice!(pool.index(i.difficulty)) if pool.size > 0
			if level.include? 'M' and !pool.index(i.difficulty).nil?
				pool.slice!(pool.index(i.difficulty))
			else
				pool = pool - [i.difficulty]
			end
			itemset = itemset + [i]
		end
		return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items.map{|i| i.id}]
	end

	# Wörter mit Lesefehler aber falsch gelöst (d.h. Fehler nicht entdeckt)
	def get_true_negative(result)
		sum = 0
		result.items.each_with_index do |item, i| 
			if result.responses[i] == 0
				it = Item.find(result.items[i])
				if it.difficulty == 0 
					sum += 1
				end
			end
		end
		return sum
	end

	# Wörter ohne Lesefehler, aber als false markiert, jedoch enthalten sie keinen Fehler
	def get_false_negative(result)
		sum = 0
		result.items.each_with_index do |item, i| 
			if result.responses[i] == 0
				it = Item.find(result.items[i])
				if it.difficulty == 1 
					sum += 1
				end
			end
		end
		return sum
	end

	# Wörte ohne Lesefehler und wurden richtig bewertet
	def get_true_positiv(result)
		sum = 0
		result.items.each_with_index do |item, i| 
			if result.responses[i] == 1
				it = Item.find(result.items[i])
				if it.difficulty == 1 
					sum += 1
				end
			end
		end
		return sum
	end

	# Wörter mit Lesefehler und wurden richtig bewertet
	def get_false_positiv(result)
		sum = 0
		result.items.each_with_index do |item, i| 
			if result.responses[i] == 1
				it = Item.find(result.items[i])
				if it.difficulty == 0 
					sum += 1
				end
			end
		end
		return sum
	end
end