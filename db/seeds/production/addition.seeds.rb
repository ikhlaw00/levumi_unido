# Test von Sarah
#Third index is the category subcategory
all_items=[
%w{	1	0	11	},
%w{	2	0	11	},
%w{	3	0	11	},
%w{	4	0	11	},
%w{	5	0	11	},
%w{	1	1	11	},
%w{	2	1	11	},
%w{	3	1	11	},
%w{	4	1	11	},
%w{	0	1	12	},
%w{	0	2	12	},
%w{	0	3	12	},
%w{	0	4	12	},
%w{	0	5	12	},
%w{	1	2	12	},
%w{	2	2	12	},
%w{	3	2	12	},
%w{	4	2	21	},
%w{	5	2	21	},
%w{	6	2	21	},
%w{	7	2	21	},
%w{	8	2	21	},
%w{	3	3	21	},
%w{	4	3	21	},
%w{	5	3	21	},
%w{	6	3	21	},
%w{	7	3	21	},
%w{	2	4	22	},
%w{	3	4	22	},
%w{	4	4	22	},
%w{	5	4	22	},
%w{	2	5	22	},
%w{	3	5	22	},
%w{	4	5	22	},
%w{	5	5	22	},
%w{	4	6	22	},
%w{	3	6	22	},
%w{	6	4	23	},
%w{	3	6	23	},
%w{	2	7	23	},
%w{	2	6	23	},
%w{	3	7	23	},
%w{	2	8	23	},
%w{	6	5	3	},
%w{	7	5	3	},
%w{	8	4	3	},
%w{	9	4	3	},
%w{	5	6	3	},
%w{	6	6	3	},
%w{	5	7	3	},
%w{	7	4	3	},
%w{	8	5	3	},
%w{	7	6	3	},
%w{	8	6	3	},
%w{	7	5	3	},
%w{	9	3	3	},
%w{	9	5	3	},
%w{	9	6	3	},
%w{	8	3	3	}
]


addition = TestZS.create(name: "Addition 1-16", len: 61, time: 90, construct: "Sarahs Tests", subject: "Mathematik", archive: false,
			student_access: true, info: "Addition 1-16", shorthand: "ADD", level: "Niveaustufe 1")
it = addition.items.build(itemtext:"Hello", itemtype: -1, itemview: "items/studentbased/additiontest/1halloAddition")
it.save

i = 0
while i < all_items.length do
	num = all_items[i][0].to_i+all_items[i][1].to_i
	it = addition.items.build(itemtext: all_items[i].join(','), itemview: 'items/studentbased/additiontest/2testItemAddition', 
		itemtype: 0, shorthand: num,
		difficulty: all_items[i][2])
	it.save
	i = i+1
end

it = addition.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/additiontest/3ende")
it.save

addition.save