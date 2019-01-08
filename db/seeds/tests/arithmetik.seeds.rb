#Test von Sven
#Addieren und Subtrahieren im Zahlenraum bis 100 
#All_items contains:
#1st nr, arithmetik, 2nd nr, category
#arithmetik: 1 means addition, 0 means subtraction
all_items=[
%w{	30	1	20	1	},
%w{	78	0	6	1	},
%w{	7	1	4	1	},
%w{	93	0	7	1	},
%w{	56	1	3	1	},
%w{	47	0	7	1	},
%w{	43	1	9	1	},
%w{	32	0	17	1	},
%w{	24	1	6	1	},
%w{	76	0	23	1	},
%w{	47	1	26	1	},
%w{	70	0	30	1	},
%w{	42	1	24	1	},
%w{	83	0	23	1	},
%w{	37	1	43	1	},
%w{	13	0	6	1	},
%w{	40	1	10	2	},
%w{	67	0	4	2	},
%w{	8	1	4	2	},
%w{	23	0	6	2	},
%w{	24	1	5	2	},
%w{	97	0	7	2	},
%w{	73	1	8	2	},
%w{	78	0	49	2	},
%w{	78	1	2	2	},
%w{	48	0	26	2	},
%w{	43	1	38	2	},
%w{	80	0	70	2	},
%w{	32	1	17	2	},
%w{	67	0	47	2	},
%w{	49	1	31	2	},
%w{	16	0	7	2	},
%w{	70	1	20	3	},
%w{	38	0	2	3	},
%w{	9	1	8	3	},
%w{	76	0	8	3	},
%w{	81	1	7	3	},
%w{	28	0	8	3	},
%w{	47	1	9	3	},
%w{	48	0	29	3	},
%w{	34	1	6	3	},
%w{	79	0	17	3	},
%w{	67	1	25	3	},
%w{	50	0	30	3	},
%w{	61	1	38	3	},
%w{	74	0	34	3	},
%w{	36	1	24	3	},
%w{	14	0	8	3	},
%w{	40	1	30	4	},
%w{	87	0	3	4	},
%w{	7	1	6	4	},
%w{	34	0	7	4	},
%w{	53	1	6	4	},
%w{	46	0	6	4	},
%w{	54	1	9	4	},
%w{	92	0	24	4	},
%w{	72	1	8	4	},
%w{	83	0	21	4	},
%w{	43	1	28	4	},
%w{	60	0	20	4	},
%w{	47	1	32	4	},
%w{	57	0	37	4	},
%w{	56	1	34	4	},
%w{	15	0	7	4	},
%w{	50	1	20	5	},
%w{	64	0	2	5	},
%w{	9	1	7	5	},
%w{	46	0	9	5	},
%w{	74	1	5	5	},
%w{	57	0	7	5	},
%w{	45	1	8	5	},
%w{	76	0	27	5	},
%w{	66	1	4	5	},
%w{	74	0	23	5	},
%w{	32	1	29	5	},
%w{	80	0	30	5	},
%w{	63	1	26	5	},
%w{	46	0	26	5	},
%w{	48	1	32	5	},
%w{	12	0	5	5	}
]


addition = TestArithmetik.create(name: "Zahlen addieren und subtrahieren", len: 82, time: 600, construct: "Addition und Subtraktion", subject: "Mathematik", archive: false,
			student_access: true, info: "Addieren und Subtrahieren im Zahlenraum bis 100", shorthand: "ARTH", level: "Niveaustufe 3", generic_views: {"student" => 'arithmetik/student_overview.html.erb'})
it = addition.items.build(itemtext:"Hello", itemtype: -1, itemview: "items/studentbased/arithmetik/1halloArithmetik")
it.save

i = 0
while i < all_items.length do
	sum = 0
	text = ''
	if all_items[i][1].to_i == 1 
		sum = all_items[i][0].to_i + all_items[i][2].to_i
		text = all_items[i][0] + " + " + all_items[i][2] 
	else
		sum = all_items[i][0].to_i - all_items[i][2].to_i
		text = all_items[i][0] + " - " + all_items[i][2] 
	end
	it = addition.items.build(itemtext: text  , itemview: 'items/studentbased/arithmetik/2testItemArithmetik', 
		itemtype: 0, shorthand: sum,
		difficulty: all_items[i][3])
	it.save
	i = i+1
end

it = addition.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/arithmetik/3ende")
it.save

addition.save