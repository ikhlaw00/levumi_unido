# Test von Sarah
# index: 1 				2			3
# 		asked_item		category	format
all_items = [
%w{	0	1	1	},
%w{	1	1	1	},
%w{	2	1	1	},
%w{	3	1	1	},
%w{	4	1	1	},
%w{	5	1	1	},
%w{	6	1	1	},
%w{	7	1	1	},
%w{	8	1	1	},
%w{	9	1	1	},
%w{	10	1	1	},
%w{	1	2	2	},
%w{	2	2	2	},
%w{	3	2	2	},
%w{	4	2	2	},
%w{	5	2	2	},
%w{	6	2	2	},
%w{	7	2	2	},
%w{	8	2	2	},
%w{	9	2	2	},
%w{	10	2	2	},
%w{	3	2	3	},
%w{	4	2	3	},
%w{	5	2	3	},
%w{	6	2	3	},
%w{	7	2	3	},
%w{	8	2	3	},
%w{	9	2	3	},
%w{	10	2	3	},
%w{	0	3	4	},
%w{	1	3	4	},
%w{	2	3	4	},
%w{	3	3	4	},
%w{	4	3	4	},
%w{	5	3	4	},
%w{	6	3	4	},
%w{	7	3	4	},
%w{	8	3	4	},
%w{	9	3	4	},
%w{	0	3	5	},
%w{	1	3	5	},
%w{	2	3	5	},
%w{	3	3	5	},
%w{	4	3	5	},
%w{	5	3	5	},
%w{	6	3	5	},
%w{	7	3	5	},
%w{	8	3	5	},
%w{	0	4	6	},
%w{	1	4	6	},
%w{	2	4	6	},
%w{	3	4	6	},
%w{	4	4	6	},
%w{	5	4	6	},
%w{	6	4	6	},
%w{	7	4	6	},
%w{	8	4	6	},
%w{	2	4	7	},
%w{	3	4	7	},
%w{	4	4	7	},
%w{	5	4	7	},
%w{	6	4	7	},
%w{	7	4	7	},
%w{	8	4	7	},
%w{	9	4	7	},
%w{	10	4	7	},
%w{	0	4	8	},
%w{	1	4	8	},
%w{	2	4	8	},
%w{	3	4	8	},
%w{	7	4	8	},
%w{	8	4	8	},
%w{	9	4	8	},
%w{	10	4	8	}
]

lineLength = 10;

math = TestZS.create(name: "Zahlenreihe bis 10", info:"", shorthand: "ZS1", len: 76, time: 90, subject: "Mathematik", 
	construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-4")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: lineLength, itemview: "items/studentbased/zahlenstrahltest/1halloZahlenstrahl")
it.save

i=0
while i<all_items.length do
	it = math.items.build(itemtext: all_items[i].join(","), shorthand: lineLength, difficulty: all_items[i][1], itemtype: 0, 
	itemview: "items/studentbased/zahlenstrahltest/2testItemZahlenstrahl")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/zahlenstrahltest/3ende") 
it.save
math.save


all_items = [
%w{	11	1	1	},
%w{	12	1	1	},
%w{	13	1	1	},
%w{	14	1	1	},
%w{	15	1	1	},
%w{	16	1	1	},
%w{	17	1	1	},
%w{	18	1	1	},
%w{	19	1	1	},
%w{	20	1	1	},
%w{	11	1	2	},
%w{	12	1	2	},
%w{	13	1	2	},
%w{	14	1	2	},
%w{	15	1	2	},
%w{	16	1	2	},
%w{	17	1	2	},
%w{	18	1	2	},
%w{	19	1	2	},
%w{	20	1	2	},
%w{	11	2	3	},
%w{	12	2	3	},
%w{	13	2	3	},
%w{	14	2	3	},
%w{	15	2	3	},
%w{	16	2	3	},
%w{	17	2	3	},
%w{	18	2	3	},
%w{	19	2	3	},
%w{	20	2	3	},
%w{	13	2	4	},
%w{	14	2	4	},
%w{	15	2	4	},
%w{	16	2	4	},
%w{	17	2	4	},
%w{	18	2	4	},
%w{	19	2	4	},
%w{	20	2	4	},
%w{	11	3	5	},
%w{	12	3	5	},
%w{	13	3	5	},
%w{	14	3	5	},
%w{	15	3	5	},
%w{	16	3	5	},
%w{	17	3	5	},
%w{	18	3	5	},
%w{	19	3	5	},
%w{	11	3	6	},
%w{	12	3	6	},
%w{	13	3	6	},
%w{	14	3	6	},
%w{	15	3	6	},
%w{	16	3	6	},
%w{	17	3	6	},
%w{	18	3	6	},
%w{	12	4	7	},
%w{	13	4	7	},
%w{	14	4	7	},
%w{	15	4	7	},
%w{	16	4	7	},
%w{	17	4	7	},
%w{	18	4	7	},
%w{	19	4	7	},
%w{	20	4	7	},
%w{	11	4	8	},
%w{	12	4	8	},
%w{	13	4	8	},
%w{	14	4	8	},
%w{	15	4	8	},
%w{	16	4	8	},
%w{	17	4	8	},
%w{	18	4	8	},
%w{	11	4	9	},
%w{	12	4	9	},
%w{	13	4	9	},
%w{	17	4	9	},
%w{	18	4	9	},
%w{	19	4	9	},
%w{	20	4	9	}
]

lineLength = 20;

math = TestZS.create(name: "Zahlenreihe von 10 bis 20", info:"", shorthand: "ZS2", len: 82, time: 90, subject: "Mathematik", 
	construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-4")

it = math.items.build(itemtext: "Hallo1", itemtype: -2, shorthand: lineLength, itemview: "items/studentbased/zahlenstrahltest/1halloZahlenstrahl")
it.save

it = math.items.build(itemtext: "Hallo2", itemtype: -1, shorthand: lineLength, itemview: "items/studentbased/zahlenstrahltest/1halloZahlenstrahl")
it.save

i=0
while i<all_items.length do
	it = math.items.build(itemtext: all_items[i].join(","),shorthand: lineLength , difficulty: all_items[i][1], itemtype: 0, 
	itemview: "items/studentbased/zahlenstrahltest/2testItemZahlenstrahl")	
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/zahlenstrahltest/3ende") 
it.save
math.save