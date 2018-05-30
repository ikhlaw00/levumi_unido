

# Number to position for numbers 0 to 20

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

math = Test.create(name: "Position finden ", info:"Number to position 0-20", shorthand: "PF2", len: 21, time: 180, subject: "Mathematik", construct: "Sarah-Test", student_access: true, archive: false, level: "Niveaustufe 2 (0-20)")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 20, itemview: "items/studentbased/mathetest/1halloNP")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: lineLength,shorthand: items[i], difficulty: toleranceValue, itemtype: 0, itemview: "items/studentbased/mathetest/2testItemNPsarah")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest/3ende") 
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

math = Test.create(name: "Zahl finden ", info:"Position to number 0-20", len: 21,shorthand: "ZF2", time: 180, subject: "Mathematik", construct: "Sarah-Test", student_access: true, archive: false, level: "Niveaustufe 2 (0-20)")

it = math.items.build(itemtext: "Hallo", itemtype: -1, shorthand: 20, itemview: "items/studentbased/mathetest/1halloPN")
it.save

i=0
while i<items.length do
	it = math.items.build(itemtext: lineLength,shorthand: items[i], difficulty: toleranceValue, itemtype: 0, itemview: "items/studentbased/mathetest/2testItemPNsarah")
	it.save
	i= i+1
end

it = math.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/mathetest/3ende") 
it.save
math.save