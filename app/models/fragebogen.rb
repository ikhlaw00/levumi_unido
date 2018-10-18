class Fragebogen < Test
	def draw_items(first) # Feste Ziehung immer
		itemset = content_items
		return [intro_items.map{|i| i.id}, itemset.map{|i| i.id}, outro_items{|i| i.id}]
	end


	# itemtext contains the following "itemtext;category;code"
	# to get codes of each item, just call get("code")
	# to get categories abbreviations just call get("cat_abbrev")
	def get(searched)
		itemset = content_items
		text = []
		categories = []
		code = []
		categories_abbrev = [] # Abkürzung der Kategorien
		itemset.each do |x|
			splitted = x.itemtext.split(";")
			text += [splitted[0]]
			categories +=[splitted[1]]
			categories_abbrev += [(splitted[1].split("(")[1]).chomp(")")]
			code += [splitted[2]]
		end
		if searched == "code"
			return code
		elsif searched == "text"
			return text
		elsif searched == "categories"
			return categories
		elsif searched == "cat_abbrev"
			return categories_abbrev
		end
	end
end