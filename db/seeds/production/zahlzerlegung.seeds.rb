# Test von Sarah
# First three are the numbers, 4th index is the category last index is left (0) or right(1)
items_zer = [
%w{	1	0	1	1	1},
%w{	1	1	0	1	1},
%w{	2	2	0	1	1},
%w{	2	1	1	1	1},
%w{	3	2	1	1	1},
%w{	3	3	0	1	1},
%w{	4	4	0	1	1},
%w{	4	3	1	1	1},
%w{	5	5	0	1	1},
%w{	1	0	1	1	0},
%w{	1	1	0	1	0},
%w{	2	1	1	1	0},
%w{	2	0	2	1	0},
%w{	3	1	2	1	0},
%w{	3	0	3	1	0},
%w{	4	1	3	1	0},
%w{	4	0	4	1	0},
%w{	5	1	4	1	0},
%w{	5	0	5	1	0},
%w{	2	2	0	2	0},
%w{	3	2	1	2	0},
%w{	3	3	0	2	0},
%w{	4	4	0	2	0},
%w{	4	3	1	2	0},
%w{	5	5	0	2	0},
%w{	2	0	2	2	1},
%w{	3	1	2	2	1},
%w{	3	0	3	2	1},
%w{	4	2	2	2	1},
%w{	4	1	3	2	1},
%w{	4	0	4	2	1},
%w{	5	3	2	2	1},
%w{	5	2	3	2	1},
%w{	5	1	4	2	1},
%w{	5	0	5	2	1},
%w{	4	2	2	2	0},
%w{	5	3	2	2	0},
%w{	5	2	3	2	0}
]

math = TestZS.create(name: "Zahlzerlegung (5)", info:"Zahlzerlegung (5)", len: 40,shorthand: "ZZ1", time: 90, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-2")
it = math.items.build(itemtext: "hallo", itemtype: -1, shorthand: "5",  itemview: "items/studentbased/zahlzerlegungstest/1halloZer")
it.save
i = 0
while i<items_zer.length do
	idx = 1
	if items_zer[i][4] == "1"
		idx = 2
	end
	it = math.items.build(itemtext: items_zer[i].join(",") + ",5", shorthand: items_zer[i][idx], itemview: "items/studentbased/zahlzerlegungstest/2testItemZer",
				itemtype: 0, difficulty: items_zer[i][3])
	it.save
	i = i + 1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/zahlzerlegungstest/3ende")
it.save

math.save

all_items = [
%w{	6	5	1	1	1	},
%w{	6	6	0	1	1	},
%w{	7	6	1	1	1	},
%w{	7	7	0	1	1	},
%w{	8	7	1	1	1	},
%w{	8	8	0	1	1	},
%w{	9	8	1	1	1	},
%w{	9	9	0	1	1	},
%w{	10	9	1	1	1	},
%w{	10	10	0	1	1	},
%w{	6	1	5	1	0	},
%w{	6	0	6	1	0	},
%w{	7	1	6	1	0	},
%w{	7	0	7	1	0	},
%w{	8	1	7	1	0	},
%w{	8	0	8	1	0	},
%w{	9	1	8	1	0	},
%w{	9	0	9	1	0	},
%w{	10	1	9	1	0	},
%w{	10	0	10	1	0	},
%w{	6	4	2	2	1	},
%w{	6	3	3	2	1	},
%w{	6	2	4	2	1	},
%w{	7	5	2	2	1	},
%w{	7	4	3	2	1	},
%w{	7	3	4	2	1	},
%w{	8	6	2	2	1	},
%w{	8	5	3	2	1	},
%w{	8	4	4	2	1	},
%w{	9	7	2	2	1	},
%w{	9	6	3	2	1	},
%w{	9	5	4	2	1	},
%w{	10	7	3	2	1	},
%w{	10	6	4	2	1	},
%w{	6	4	2	2	0	},
%w{	6	3	3	2	0	},
%w{	6	2	4	2	0	},
%w{	7	4	3	2	0	},
%w{	7	3	4	2	0	},
%w{	8	4	4	2	0	},
%w{	7	2	5	2	0	},
%w{	8	3	5	2	0	},
%w{	8	2	6	2	0	},
%w{	9	4	5	2	0	},
%w{	9	3	6	2	0	},
%w{	9	2	7	2	0	},
%w{	10	4	6	2	0	},
%w{	10	3	7	2	0	},
%w{	10	2	8	2	0	},
%w{	6	1	5	3	1	},
%w{	6	0	6	3	1	},
%w{	7	2	5	3	1	},
%w{	7	1	6	3	1	},
%w{	7	0	7	3	1	},
%w{	8	3	5	3	1	},
%w{	8	2	6	3	1	},
%w{	8	1	7	3	1	},
%w{	8	0	8	3	1	},
%w{	9	4	5	3	1	},
%w{	9	3	6	3	1	},
%w{	9	2	7	3	1	},
%w{	9	1	8	3	1	},
%w{	9	0	9	3	1	},
%w{	10	5	5	3	1	},
%w{	10	4	6	3	1	},
%w{	10	3	7	3	1	},
%w{	10	2	8	3	1	},
%w{	10	1	9	3	1	},
%w{	10	0	10	3	1	},
%w{	10	5	5	3	0	},
%w{	6	5	1	3	0	},
%w{	6	6	0	3	0	},
%w{	7	5	2	3	0	},
%w{	7	6	1	3	0	},
%w{	7	7	0	3	0	},
%w{	8	5	3	3	0	},
%w{	8	6	2	3	0	},
%w{	8	7	1	3	0	},
%w{	8	8	0	3	0	},
%w{	9	5	4	3	0	},
%w{	9	6	3	3	0	},
%w{	9	7	2	3	0	},
%w{	9	8	1	3	0	},
%w{	9	9	0	3	0	},
%w{	10	6	4	3	0	},
%w{	10	7	3	3	0	},
%w{	10	8	2	3	0	},
%w{	10	9	1	3	0	},
%w{	10	10	0	3	0	}
]

math = TestZS.create(name: "Zahlzerlegung (6-10)", info:"Zahlzerlegung 6-10", len: 91,shorthand: "ZZ2", time: 90, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-3")
it = math.items.build(itemtext: "hallo", itemtype: -1, shorthand: 10, itemview: "items/studentbased/zahlzerlegungstest/1halloZer")
it.save

i = 0
while i<all_items.length do
	idx = 1
	if all_items[i][4] == "1"
		idx = 2
	end
	it = math.items.build(itemtext: all_items[i].join(",") + ",10" , shorthand: all_items[i][idx], itemview: "items/studentbased/zahlzerlegungstest/2testItemZer",
				itemtype: 0, difficulty: all_items[i][3])
	it.save
	i = i + 1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/zahlzerlegungstest/3ende")
it.save

math.save