
# Die Reihenfolge wurde so geändert, dass Items aus derselben Kategorie untereinander aufgelistet werden.
items = [
	["Er/Sie geht gerne in die Schule.",												0,0],
	["Er/Sie hat keine Lust, in die Schule zu gehen.", 									0,1],
	["Ihm/Ihr gefällt es in der Schule.", 												0,0],
	["Ihm/Ihr macht die Schule Spaß.", 													0,0],
	["Er/Sie hat sehr viele Freundinnen oder Freunde in seiner/ihrer Klasse.",			1,0],
	["Er/Sie kommt mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut aus.",		1,0],
	["Er/Sie fühlt sich in seiner/ihrer Klasse allein.",								1,1],
	["Er/Sie verträgt sich mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut.",	1,0],
	["Er/Sie lernt schnell.",															2,0],
	["Er/Sie kann auch sehr schwierige Aufgaben lösen.",								2,0],
	["Er/Sie ist ein guter Schüler/ eine gute Schülerin.",								2,0],
	["Ihm/Ihr ist in der Schule vieles zu schwierig.",									2,1]
]

categories = [
	"Soziale Inklusion (SI)", 
	"Emotionale Inklusion (EI)", 
	"Akademisches Selbstkonzept (AS)" 
]

items_abbrev = [
	"Schul- freude",
	"Unlust",
	"Gefallen",
	"Spaß",
	"Freunde",
	"Mitschüler",
	"Allein",
	"Vertragen",
	"Schnell",
	"Stark",
	"Gut",
	"Schwer"
]

# Fragebogen PIQ
t = Fragebogen.create(name: "Fragebogen: Wahrnehmung von Inklusion aus Lehrersicht", student_access: false, archive: false, info: "", len: 13, shorthand:"FB-PIQ",
		subject: "Fragebogen", construct: "Fragebogen", level: "Schule")


it = t.items.build(itemtext: "hallo", itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 4) #difficulty: stimmt gar nicht, ..., stimmt
it.save

i = 0
while i < items.length do
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][1]] + ";" + items[i][2].to_s, shorthand: items_abbrev[i],
		itemtype: 0, itemview: "items/userbased/fragebogen_void", difficulty: items[i][2])
	it.save
	i = i+1
end
t.save 