# index: 1 				2			3
# 		asked_item		category	format
all_items = [
%w{	0	1	1	},
%w{	5	1	1	},
%w{	1	2	1	},
%w{	4	2	1	},
%w{	2	3	1	},
%w{	3	3	1	},
%w{	5	1	2	},
%w{	0	1	2	},
%w{	4	2	2	},
%w{	1	2	2	},
%w{	2	3	2	},
%w{	3	3	2	},
%w{	0	1	3	},
%w{	5	1	3	},
%w{	1	2	3	},
%w{	4	2	3	},
%w{	3	3	3	},
%w{	2	3	3	},
%w{	10	1	1	},
%w{	6	2	1	},
%w{	9	2	1	},
%w{	7	3	1	},
%w{	8	3	1	},
%w{	10	1	2	},
%w{	6	2	2	},
%w{	9	2	2	},
%w{	7	3	2	},
%w{	8	3	2	},
%w{	10	1	3	},
%w{	6	2	3	},
%w{	9	2	3	},
%w{	7	3	3	},
%w{	8	3	3	}
]

lineLength = 10;

math = Test.create(name: "Zahlenstrahl 0-10", info:"Zahlenstrahl von Sarah 0-10", shorthand: "ZS1", len: 35, time: 180, subject: "Mathematik", 
	construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-3")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: lineLength, itemview: "items/studentbased/mathetest_sarah/1halloBox")
it.save

i=0
while i<all_items.length do
	if all_items[i][2] == "1" 
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength , difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemBox")	
	elsif all_items[i][2] == "2"
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength , difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemRedLine")	
	elsif all_items[i][2] == "3"
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength, difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemOrt")	
	end
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save


all_items = [
%w{	15	1	1	},
%w{	11	2	1	},
%w{	14	2	1	},
%w{	12	3	1	},
%w{	13	3	1	},
%w{	15	1	2	},
%w{	11	2	2	},
%w{	14	2	2	},
%w{	17	3	2	},
%w{	18	3	2	},
%w{	20	1	3	},
%w{	14	2	3	},
%w{	11	2	3	},
%w{	13	3	3	},
%w{	18	3	3	},
%w{	20	1	1	},
%w{	16	2	1	},
%w{	19	2	1	},
%w{	17	3	1	},
%w{	18	3	1	},
%w{	20	1	2	},
%w{	16	2	2	},
%w{	19	2	2	},
%w{	12	3	2	},
%w{	13	3	2	},
%w{	15	1	3	},
%w{	16	2	3	},
%w{	19	2	3	},
%w{	12	3	3	},
%w{	17	3	3	}
]

lineLength = 20;

math = Test.create(name: "Zahlenstrahl 10-20", info:"Zahlenstrahl von Sarah 10-20", shorthand: "ZS2", len: 32, time: 180, subject: "Mathematik", 
	construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-3")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: lineLength, itemview: "items/studentbased/mathetest_sarah/1halloBox")
it.save

i=0
while i<all_items.length do
	if all_items[i][2] == "1" 
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength , difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemBox")	
	elsif all_items[i][2] == "2"
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength , difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemRedLine")	
	elsif all_items[i][2] == "3"
		it = math.items.build(itemtext: all_items[i][0],shorthand: lineLength, difficulty: all_items[i][1], itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemOrt")	
	end
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save



# Number to position for numbers 0 to 20
=begin
	
end
items= %w{
7
6
3
17
16
5
1
2
19
10
18
13
8
4
9
14
15
11
12
}

toleranceValue = 1 ;
lineLength = 20;

math = Test.create(name: "Zahl finden", info:"Position to number 0-20", shorthand: "PF2", len: 21, time: 180, subject: "Mathematik", 
	construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 2 (0-20) Box")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 20, itemview: "items/studentbased/mathetest_sarah/1halloBox")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: lineLength,shorthand: items[i], difficulty: toleranceValue, itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemBox")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save
















######################################## Position to number Tests #######################################




# Position to number for numbers 0 to 20

items= %w{
3
19
9
7
18
10
4
2
6
17
14
11
8
13
5
15
16
1
12
}

toleranceValue = 1 ;
lineLength = 20;

math = Test.create(name: "Zahl finden", info:"Position to number 0-20", len: 21,shorthand: "ZF2", time: 180, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 2 (0-20)Redline")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 20, itemview: "items/studentbased/mathetest_sarah/1halloRedLine")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: lineLength,shorthand: items[i], difficulty: toleranceValue, itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemRedLine")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save





# Zahlen verorten for numbers 0 to 20

items= %w{
3
9
9
7
8
0
4
2
6
7
4
1
8
3
5
5
6
1
5
}


toleranceValue = 1 ;
lineLength = 10;

math = Test.create(name: "Zahl verorten 1", info:"Number to position 0-20", len: 21,shorthand: "ZV2", time: 180, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 2 (0-20) Ort")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 10, itemview: "items/studentbased/mathetest_sarah/1halloOrt")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: items[i],shorthand: lineLength , difficulty: toleranceValue, itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemOrt")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save

items= %w{
3
19
9
7
18
10
4
2
6
17
14
11
8
13
5
15
16
1
12
}

toleranceValue = 2 ;
lineLength = 20;

math = Test.create(name: "Zahl verorten 2", info:"Number to position 0-20", len: 21,shorthand: "ZV2", time: 180, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 2 (0-20) Ort")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 20, itemview: "items/studentbased/mathetest_sarah/1halloOrt")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: items[i],shorthand: lineLength, difficulty: toleranceValue, itemtype: 0, 
		itemview: "items/studentbased/mathetest_sarah/2testItemOrt")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende") 
it.save
math.save

=end

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

math = Test.create(name: "Zahlzerlegung (0-5)", info:"Zahlzerlegung 0-5", len: 40,shorthand: "ZZ1", time: 180, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-2")
it = math.items.build(itemtext: "hallo", itemtype: -1, itemview: "items/studentbased/mathetest_sarah/1halloZer")
it.save
i = 0
while i<items_zer.length do
	it = math.items.build(itemtext: items_zer[i].join(","), shorthand: 5, itemview: "items/studentbased/mathetest_sarah/2testItemZer",
			itemtype: 0, difficulty: items_zer[i][3])
	it.save
	i = i + 1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende")
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

math = Test.create(name: "Zahlzerlegung (6-10)", info:"Zahlzerlegung 6-10", len: 91,shorthand: "ZZ2", time: 180, subject: "Mathematik",
 construct: "Sarahs Tests", student_access: true, archive: false, level: "Niveaustufe 1-3")
it = math.items.build(itemtext: "hallo", itemtype: -1, itemview: "items/studentbased/mathetest_sarah/1halloZer")
it.save

i = 0
while i<all_items.length do
	it = math.items.build(itemtext: all_items[i].join(","), shorthand: 10, itemview: "items/studentbased/mathetest_sarah/2testItemZer",
			itemtype: 0, difficulty: all_items[i][3])
	it.save
	i = i + 1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende")
it.save

math.save


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


addition = Test.create(name: "Addition 1-16", len: 61, time: 180, construct: "Sarahs Tests", subject: "Mathematik", archive: false,
			student_access: true, info: "Addition 1-16", shorthand: "ADD", level: "Niveaustufe 1")
it = addition.items.build(itemtext:"Hello", itemtype: -1, itemview: "items/studentbased/mathetest_sarah/1halloAddition")
it.save

i = 0
while i < all_items.length do
	it = addition.items.build(itemtext: all_items[i].join(','), itemview: 'items/studentbased/mathetest_sarah/2testItemAddition', itemtype: 0, shorthand: all_items[i].join(','),
		difficulty: all_items[i][2])
	it.save
	i = i+1
end

it = addition.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest_sarah/3ende")
it.save

addition.save