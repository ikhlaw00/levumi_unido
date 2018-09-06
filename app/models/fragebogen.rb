class Fragebogen < Test
	def draw_items(first) # Feste Ziehung immer
		itemset = content_items
		return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items{|i| i.id}]
	end
end